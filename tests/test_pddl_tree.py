from pond.pddl_tree import PDDL_Tree
import os


def test_make_tree_replanner_balls_colored():
    fname = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls/colored/n3-b1-c2.pddl"
    assert os.path.exists(fname)
    tree = PDDL_Tree.create(fname)
    tree.print_tree()
    assert tree is not None
