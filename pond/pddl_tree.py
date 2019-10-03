from typing import List, Iterator, Tuple, Union

from .utils import get_contents


class TreeParseError(Exception):
    pass


class PDDL_Tree:
    """
    A node in the PDDL Tree.
    Also the root node, thus represents the PDDL Tree itself.
    """

    # set tab at 4 spaces
    TAB = " " * 4
    EMPTY = "<empty>"

    def __init__(self, name: str):
        """Create a new tree node with given name."""

        self.name = name
        self.children = []  # type: List[PDDL_Tree]

    def __getitem__(self, k: str) -> "PDDL_Tree":
        """
        Allow retrieval of children based on name.
        Throw an error if nothing found
        No speedup, just convenient interface.
        """

        for c in self.children:
            if c.name == k:
                return c

        raise KeyError("No subtree with name %s found in this tree" % k)

    def __contains__(self, k: str) -> bool:
        """Allow membership checking of named subtree k. For convenience, no actual speedup."""

        return k in self.named_children()

    def find_all(self, k: str) -> Iterator["PDDL_Tree"]:
        """
        Find all children of this node with name k
        Return as a generator
        """

        for c in self.children:
            if c.name == k:
                yield c

    def named_children(self) -> List[str]:
        """
        Return a list of the names of this node's children.
        Particularly useful if the children are all leaves.
        """

        return [c.name for c in self.children]

    def add_child(self, child: "PDDL_Tree"):
        """Add the given child to the end of the list of children."""

        self.children.append(child)

    def dump(self):
        """Informative representation."""

        return self.print_tree()

    def print_tree(self, lvl: int = 0):
        """Print the entire tree to the console."""

        print(PDDL_Tree.TAB * lvl + str(self.name))

        for child in self.children:
            child.print_tree(lvl + 1)

    def has_children(self):
        """Return True iff this node has children. """

        return len(self.children) == 0

    def is_leaf(self):
        """ Return True iff this node is a leaf. """

        return not self.has_children()

    def is_empty(self):
        """Return True if this node is a (filler) empty node."""

        return self.name == PDDL_Tree.EMPTY

    @staticmethod
    def create(fname: str) -> "PDDL_Tree":
        """Create a PDDL Tree out of the given PDDL file."""

        pddl_list = PDDL_Tree._get_pddl_list(get_contents(fname))
        pddl_tree = PDDL_Tree._make_tree(pddl_list)
        PDDL_Tree._alter_tree(pddl_tree)
        return pddl_tree

    @staticmethod
    def _alter_tree(root: "PDDL_Tree"):
        """Alter tree to get correct semantic structure."""

        alter_set = set([":precondition", ":effect", ":observe"])
        i = 0

        while i < len(root.children):
            if root.children[i].name == ":parameters":
                if not root.children[i + 1].is_empty():
                    root.children[i].add_child(root.children[i + 1])

                # this also clears the original father node
                while len(root.children[i + 1].children) > 0:
                    c = root.children[i + 1].children.pop(0)
                    root.children[i].add_child(c)

                root.children.pop(i + 1)  # finally, remove the subtree
            elif root.children[i].name in alter_set:
                subtree = root.children.pop(i + 1)
                root.children[i].add_child(subtree)
            else:
                PDDL_Tree._alter_tree(root.children[i])
            i += 1

    @staticmethod
    def _make_tree(pddl_list):
        """
        Make a tree out of a PDDL list.
        Meant to be called internally
        """

        root = PDDL_Tree(pddl_list[0])

        for child in pddl_list[1:]:
            if isinstance(child, list):
                if len(child) == 0:
                    root.add_child(PDDL_Tree(PDDL_Tree.EMPTY))
                else:
                    subtree = PDDL_Tree._make_tree(child)
                    root.add_child(subtree)
            else:
                root.add_child(PDDL_Tree(child))

        return root

    @staticmethod
    def _tokenize_pddl(contents: str) -> Iterator[str]:
        """
        Generator over the tokens
        Tokenize PDDL file. Single linear pass over contents
        """
        last_token = ""
        for c in contents:
            if c in [" ", "\n", "\t"]:
                if last_token:
                    yield last_token
                last_token = ""
            elif c in ["(", ")"]:
                if last_token:
                    yield last_token
                yield c
                last_token = ""
            else:
                last_token += c

    @staticmethod
    def _tokens_to_nested_list(tokens: List[str], i: int = 0, level: int = 0) -> Tuple[list, int]:
        """Convert the tokens into a nested list of expressions
        Single linear pass over tokens"""
        expr = []  # type: List[Union[str, list]]
        while i < len(tokens):
            token = tokens[i]
            if token == "(":
                # when called, function can expect i to point to token AFTER the open bracket
                # when returning, caller can expect i to point to token AFTER the closing bracket
                nested_expr, i = PDDL_Tree._tokens_to_nested_list(tokens, i + 1, level + 1)
                expr.append(nested_expr)
            elif token == ")":
                # i refers to the index AFTER the closing bracket
                return expr, i + 1
            else:
                expr.append(token)
                i += 1

        assert level == 0, "Error: parens are not balanced in PDDL file"
        assert len(expr) == 1, "Should have only one definition per PDDL file"
        assert isinstance(expr[0], list)
        return expr[0], i

    @staticmethod
    def _get_pddl_list(contents: str) -> list:
        """
        Given the contents of a PDDL file, return a list of correctly nested lists.
        Each item is either a string or a list

        This is also the pre-processing step.

        PDDL files use a Lisp-like bracketing notation that makes them rather easy to parse
        """
        tokens = [token for token in PDDL_Tree._tokenize_pddl(contents)]
        expr, _ = PDDL_Tree._tokens_to_nested_list(tokens)
        return expr
