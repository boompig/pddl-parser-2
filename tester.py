import argparse
import os
import sys
import tempfile
from typing import Callable

from pond import grounder, parser


def get_files(d: str) -> tuple:
    """Return the problem and domain files if found.
    Return None for both if not.

    Inputs:
        d    directory to search in

    Outputs:
        p_fname        list of file names of problem files (without parent path)
        d_fname        file name of domain file (without parent path)
    """

    contents = [
        f for f in os.listdir(d) if not f.endswith(".swp") and not f.endswith(".orig")
    ]
    p_fnames = []
    d_fname = None

    # if we find more than instance of each, return the first of each
    for f in contents:
        if os.path.isdir(os.path.join(d, f)):
            l, dx = get_files(os.path.join(d, f))
            if len(l) > 0:
                p_fnames.extend([os.path.join(f, p_fname) for p_fname in l])
            if dx is not None:
                d_fname = os.path.join(f, dx)
        elif f == "domain.pddl" or f.startswith("d"):
            d_fname = f
        elif f.startswith("p") or (d_fname is not None and f.endswith(".pddl")):
            p_fnames.append(f)

    return p_fnames, d_fname


def test_ktm(folder, parent_name):

    # find location of domain and problem files
    p_fnames, d_fname = get_files(folder)
    p_fnames = [os.path.join(folder, f) for f in p_fnames]
    d_fname = os.path.join(folder, d_fname)
    assert len(p_fnames) == 1, "There should only be 1 problem"
    p_fname = p_fnames[0]

    # check import works
    from pond import ktm, grounder

    # ground the problem
    gp = grounder.GroundProblem(d_fname, p_fname)

    # sample tags
    # take the first literal from the problem
    t0 = sorted(list(gp.fluents))[0]
    T = [ktm.Literal(t0, False)]

    # sample merges
    M = []

    # sample initial literals
    init_TL = []

    # somewhere, where stuff can be dumped without consequence
    fakes = _create_temp_files()

    fond_prob = ktm.compile(gp, T, M, init_TL)
    fond_prob.write(fakes["domain"], fakes["problem"])


def batch_parse(parent, parent_name):
    """Creates the problem. Prints anything which is amiss."""

    print("Running on benchmarks from %s" % parent_name)
    good = 0
    tot = 0
    est_tot = len(os.listdir(parent))

    for f in os.listdir(parent):
        # it should be
        if os.path.isdir(os.path.join(parent, f)):
            tot += 1
            try:
                result = parse_problem(os.path.join(parent, f), f, silent=True)
                if len(result) > 0:
                    # don't print out successes, just clogs up output
                    # instead keep ratio
                    # print "Success on %s" % f
                    good += 1
                else:
                    print("Skipping %s" % f)

            except ValueError:
                print("Failed on problem %s due to type mismatches" % f)
            except Exception as e:
                print("Failed on problem %s for the following reason" % f)
                print(e)
        sys.stdout.write("Parsed %d%% of domains\r" % (int(tot * 100.0 / est_tot)))
        sys.stdout.flush()

    print("")
    print("Able to parse %d of %d domains" % (good, tot))
    success_rate = 0 if tot == 0 else good / tot * 100
    print("Success rate: %d%%" % int(success_rate))


def batch_ground(parent, parent_name):
    """Creates the problem. Prints anything which is amiss."""

    print("Running on benchmarks from %s" % parent_name)
    good = 0
    tot = 0

    # we only care about directories
    dirs = [d for d in os.listdir(parent) if os.path.isdir(os.path.join(parent, d))]
    est_tot = len(dirs)

    for f in dirs:
        tot += 1

        # print "Running on %s" % f
        try:
            result = ground_problem(os.path.join(parent, f), f, silent=True)
            if result:
                # don't print out successes, just clogs up output
                # instead keep ratio
                # print "Success on %s" % f
                good += 1
            else:
                print("Skipping %s" % f)

        except ValueError:
            print("Failed on problem %s due to type mismatches" % f)
        except Exception as e:
            print("Failed on problem %s for the following reason:" % f)
            print(e)

        # status bar
        sys.stdout.write("Progress: %.0f%% checked\r" % (tot / est_tot * 100))
        sys.stdout.flush()

    print("Able to parse %d of %d domains" % (good, tot))
    success_rate = 0 if tot == 0 else good / tot * 100
    print("Success rate: %d%%" % int(success_rate))


def parse_problem(folder, domain_name, silent=False, index=None):
    """ Fully create the problem from the given folder"""

    p_fnames, d_fname = get_files(folder)
    p_fnames = [os.path.join(folder, f) for f in p_fnames]
    d_fname = os.path.join(folder, d_fname)
    probs = []

    if len(p_fnames) == 0 or d_fname is None:
        if not silent:
            print("Failed to find domain and problem file in folder %s" % folder)
        return probs

    if not silent:
        print("Parsing domain %s" % folder)
    if index is None:
        for p_fname in p_fnames:
            # print this so have full file path in console

            prob = parser.Problem(d_fname, p_fname)
            probs.append(prob)

            if not silent:
                prob.dump()

        if len(probs) > 1 and not silent:
            print("parsed %d problems in domain %s" % (len(probs), domain_name))

        return probs
    else:
        p_fname = p_fnames[index]
        # print this so have full file path in console

        prob = parser.Problem(d_fname, p_fname)
        probs.append(prob)

        if not silent:
            prob.dump()

    if len(probs) > 1 and not silent:
        print("parsed %d problems in domain %s" % (len(probs), domain_name))

        return probs


def batch_normalize(parent, parent_name):
    """Same as batch, but in addition to parsing, make sure all
    are normalized."""

    print("Running on benchmarks from %s" % parent_name)
    good = 0
    tot = 0

    for f in os.listdir(parent):
        # it should be
        if os.path.isdir(os.path.join(parent, f)):
            tot += 1
            try:
                result = normalize_problem(os.path.join(parent, f), f, silent=True)
                if result:
                    # don't print out successes, just clogs up output
                    # instead keep ratio
                    # print "Success on %s" % f
                    good += 1
                else:
                    print("Skipping %s" % f)

            except ValueError:
                print("Failed on problem %s due to type mismatches" % f)
            except Exception as e:
                print("Failed on problem %s for the following reason" % f)
                print(e)

    print("Able to normalize %d of %d problems" % (good, tot))
    success_rate = 0 if tot == 0 else good / tot * 100
    print("Success rate: %d%%" % int(success_rate))


def batch_export(parent, parent_name, ground=False):
    """Go through all problems.
    Parse them. Write them to temporary files.
    Read them back.
    Make sure they're identical.
    Delete the temp files.
    """

    print("Running on benchmarks from %s" % parent_name)
    good = 0
    tot = 0
    est_tot = len(os.listdir(parent))

    for f in os.listdir(parent):
        path = os.path.join(parent, f)
        if os.path.isdir(path):
            tot += 1
            try:
                if ground:
                    result = export_ground_problem(path, f, silent=True)
                else:
                    result = export_problem(path, f, silent=True)
                if not result:
                    print("Failed on domain %s" % f)
                else:
                    good += 1
            except Exception as e:
                print("Encountered error on parsing %s" % f)
                print(str(e))

            progress = tot * 100.0 / est_tot
            sys.stdout.write("\r" + "%d%% completed" % int(progress))
            sys.stdout.flush()

    print("")
    print("Summary: successfully exported %d of %d domains" % (good, tot))
    print("Success rate: %d%%" % (good * 100 / tot))


def _create_temp_files():
    """Create temp files for domain and problem, return dict with their names."""

    fakes = {}
    for i in ["domain", "problem"]:
        q, fname = tempfile.mkstemp()
        os.close(q)
        fakes[i] = fname
    return fakes


def _export_problem(p):
    """Given the problem, export it to temp files.
    Close the temp files and return a dictionary containing their names.
    d = {'domain' : domain_file_name, 'problem' : problem_file_name}
    """

    # create temp files
    fakes = _create_temp_files()
    p.export(fakes["domain"], fakes["problem"])
    return fakes


def export_ground_problem(folder, domain_name, silent=True):
    """Parse problem, ground problem, export problem to temp location.
    Load the problem back, ground it again, and check if they are the same."""

    p_fnames, d_fname = get_files(folder)
    p_fnames = [os.path.join(folder, n) for n in p_fnames]
    d_fname = os.path.join(folder, d_fname)

    if p_fnames is None or len(p_fnames) == 0:
        return False

    for _, p_fname in enumerate(p_fnames):
        gp = grounder.GroundProblem(d_fname, p_fname)
        fakes = _export_problem(gp)

        if not silent:
            print("* Contents of domain file *")
            fp = open(fakes["domain"], "r")
            for line in fp:
                print(line.rstrip())
            fp.close()
            if fakes["problem"] is not None:
                print("* Contents of problem file *")
                fp = open(fakes["problem"], "r")
                for line in fp:
                    print(line.rstrip())
                fp.close()

        # now read back the domain file
        fake_gp = grounder.GroundProblem(
            fakes["domain"], fakes["problem"], no_ground=True
        )

        if fake_gp.is_equal(gp):
            if not silent:
                print("Domains are equivalent")
            result = True
        else:
            if not silent:
                print("Domains are not equivalent")
            result = False

        # remove temporary file
        os.remove(fakes["domain"])
        if fakes["problem"] is not None:
            os.remove(fakes["problem"])

        return result


def export_problem(folder: str, domain_name: str, silent: bool = True):
    """Parse problem, then export problem to temporary location."""

    p_fnames, d_fname = get_files(folder)
    p_fnames = [os.path.join(folder, n) for n in p_fnames]
    d_fname = os.path.join(folder, d_fname)

    if p_fnames is None or len(p_fnames) == 0:
        return False

    for i, p_fname in enumerate(p_fnames):
        prob = parser.Problem(d_fname, p_fname)
        fakes = _export_problem(prob)

        if not silent:
            print("* Contents of domain file *")
            fp = open(fakes["domain"], "r")
            for line in fp:
                print(line.rstrip())
            fp.close()
            if fakes["problem"] is not None:
                print("* Contents of problem file *")
                fp = open(fakes["problem"], "r")
                for line in fp:
                    print(line.rstrip())
                fp.close()

        # now read back the domain file
        fake_problem = parser.Problem(fakes["domain"], fakes["problem"])

        if fake_problem.is_equal(prob):
            if not silent:
                print("Domains are equivalent")
            result = True
        else:
            if not silent:
                print("Domains are not equivalent")
            result = False

        # remove temporary file
        os.remove(fakes["domain"])
        if fakes["problem"] is not None:
            os.remove(fakes["problem"])

        return result


def normalize_problem(folder: str, domain_name: str, silent: bool = False):
    """Same as parse, but make sure init is also normalized."""

    probs = parse_problem(folder, domain_name, silent=True)

    if len(probs) == 0:
        return False

    for i, prob in enumerate(probs):
        if not silent:
            print("Normalizing problem %d" % (i + 1))
            prob.init.normalize()
            if not silent:
                prob.dump()

    return True


def ground_problem(folder: str, domain_name: str, silent: bool = False):
    """Ground the given problem. Show the result."""

    p_fnames, d_fname = get_files(folder)
    p_fnames = [os.path.join(folder, f) for f in p_fnames]
    d_fname = os.path.join(folder, d_fname)

    est_tot = len(p_fnames)
    tot = 0

    if not silent:
        s = "problems" if est_tot > 1 else "problem"
        print("Grounding %d %s in domain %s" % (est_tot, s, domain_name))

    for p_fname in p_fnames:
        tot += 1
        gp = grounder.GroundProblem(d_fname, p_fname)
        if not silent:
            # gp.dump ()

            print(gp.initial_states)
            # sys.stdout.write("Progress: %.0f%% problems checked\r" % (tot / est_tot * 100))
            # sys.stdout.flush()

    if not silent:
        print("Successfully ground all problems")
    return True


def make_tree(fname: str):
    """Create a tree out of the given PDDL file."""

    from pond import pddl_tree

    tree = pddl_tree.PDDL_Tree.create(fname)
    tree.print_tree()


def find_parent(folder: str, parents, parent=None):
    """Return the name of the parent to whom the folder belongs.
    Return None if not found."""

    if parent is None:
        for parent_name, parent_path in parents.items():
            if os.path.exists(os.path.join(parent_path, folder)):
                return parent_name
    elif parent in parents:
        parent_name = parent
        parent_path = parents[parent]
        if os.path.exists(os.path.join(parent_path, folder)):
            return parent_name
    else:
        assert False, "Invalid parent specified: %s" % parent


def batch_run(function: Callable, parents, parent=None):
    """Batch run the given function.
    If parent is specified, run only on the parent.
    If not specified, run on all parents.
    """

    if parent is None:
        for parent_name, path in parents.items():
            function(path, parent_name)
    elif os.path.exists(parent) and os.path.isdir(parent):
        function(parent, parent.rstrip(os.path.sep).split(os.path.sep)[-1])
    elif parent in parents:
        function(parents[parent], parent)
    else:
        assert False, "The specified parent is not a valid directory or does not exist"


if __name__ == "__main__":
    parents = {
        "CLG": "pond-benchmarks/CLG_benchmarks",
        "fsc": "pond-benchmarks/cp2fsc-and-replanner-benchmarks/fsc",
        "contff": "pond-benchmarks/contff-tests",
    }
    here = os.path.dirname(os.path.abspath(__file__))
    for parent_name, path in parents.items():
        parents[parent_name] = os.path.join(here, path)

    arg_parser = argparse.ArgumentParser()
    sp = arg_parser.add_subparsers(dest="subparser")
    sp.required = True

    ktm = sp.add_parser("ktm", help="Test KTM stuff")
    ktm.add_argument("folder")
    ktm.set_defaults(subparser="ktm")

    l = sp.add_parser("list", help="List all the domains available")
    l.add_argument(
        "-p",
        "--parent",
        help="Only list domains for this parent. One of CLG, contff, fsc",
    )
    l.set_defaults(subparser="list")

    tree = sp.add_parser(
        "tree",
        help="Create a tree out of the domain and problem files\
            in the given folder",
    )
    tree.add_argument("folder")
    tree.set_defaults(subparser="tree")

    pp = sp.add_parser(
        "parse-problem", help="Parse a single problem, without its domain"
    )
    pp.add_argument("problem")
    pp.set_defaults(subparser="parse-problem")

    parse = sp.add_parser(
        "parse", help="Parse a problem and domain combination in the given folder"
    )
    parse.add_argument("folder")
    parse.add_argument(
        "-n", "--number", type=int, help="The index of the problem to parse"
    )
    parse.set_defaults(subparser="parse")

    normalize = sp.add_parser(
        "normalize", help="Same as parse, except assert that this is also normalized"
    )
    normalize.add_argument("folder")
    normalize.set_defaults(subparser="normalize")

    ground = sp.add_parser("ground", help="Ground the given domain")
    ground.add_argument("folder")
    ground.set_defaults(subparser="ground")

    parent_string = "Optionally, instead of the defaults, {}\
                     only the domains in the given parent directory"

    batch = sp.add_parser(
        "batch-parse",
        help="Parse every domain and problem file that I have. Report results.",
    )
    batch.add_argument("-p", "--parent", help=parent_string.format("parse"))
    batch.set_defaults(subparser="batch-parse")

    bn = sp.add_parser(
        "batch-normalize",
        help="Same as batch-parse, except verify that the \
            domain and problem are normalized",
    )
    bn.add_argument("-p", "--parent", help=parent_string.format("normalize"))
    bn.set_defaults(subparser="batch-normalize")

    bg = sp.add_parser(
        "batch-ground", help="Same as batch-parse, except also try to ground"
    )
    bg.add_argument("-p", "--parent", help=parent_string.format("ground"))
    bg.set_defaults(subparser="batch-ground")

    arg_export = sp.add_parser("export", help="Export given file")
    arg_export.add_argument("folder")
    arg_export.add_argument(
        "-p", "--parent", help="Optionally specify a parent in which to find the domain"
    )
    arg_export.add_argument(
        "--verbose", "-v", action="count", help="Show exported file contents"
    )
    arg_export.set_defaults(subparser="export")

    be = sp.add_parser(
        "batch-export",
        help="Same as batch-parse, except verify that the domain\
            and problem can be exported as PDDL",
    )
    be.add_argument("-p", "--parent", help=parent_string.format("export"))
    be.set_defaults(subparser="batch-export")

    beg = sp.add_parser(
        "batch-export-ground", help="Same as batch-export, except ground problem first"
    )
    beg.add_argument(
        "-p",
        "--parent",
        help="Optionally, instead of the defaults, export all the domains in the given parent directory",
    )
    beg.set_defaults(subparser="batch-export-ground")

    eg = sp.add_parser(
        "export-ground", help="Same as export, except ground problem first"
    )
    eg.add_argument("folder")
    eg.add_argument(
        "--verbose", "-v", action="count", help="Show exported file contents"
    )
    eg.set_defaults(subparser="export-ground")

    args = arg_parser.parse_args()

    if "list" == args.subparser:
        if args.parent is None:
            for parent_name, path in parents.items():
                print("*** Problems for %s ***" % parent_name)
                f = lambda d: os.path.isdir(os.path.join(path, d))
                dirs = list(filter(f, os.listdir(path)))
                for d in dirs:
                    print("\t%s" % d)
        elif args.parent in parents:
            print("*** Problems for %s ***" % args.parent)
            path = parents[args.parent]
            dirs = [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d))]
            for d in dirs:
                print("\t%s" % d)
        else:
            assert False, "Parent must be one of %s" % ", ".join(list(parents.keys()))
    elif "tree" == args.subparser:
        make_tree(args.folder)
    elif "ktm" == args.subparser:
        parent_name = find_parent(args.folder, parents)
        if parent_name is None:
            assert False, "No such domain found: %s" % args.folder
        else:
            path = os.path.join(parents[parent_name], args.folder)
            test_ktm(path, args.folder)
    elif "ground" == args.subparser:
        parent_name = find_parent(args.folder, parents)
        if parent_name is None:
            assert False, "No such domain found: %s" % args.folder
        else:
            path = os.path.join(parents[parent_name], args.folder)
            ground_problem(path, args.folder)
    elif "parse" == args.subparser:
        if "/" in args.folder:
            parent_name, folder = args.folder.split("/")
        else:
            parent_name = find_parent(args.folder, parents)
            folder = args.folder
            if parent_name is None:
                assert False, "No such domain found: %s" % args.folder
        print("Parent is %s" % parent_name)
        path = os.path.join(parents[parent_name], folder)
        parse_problem(path, folder, silent=False, index=args.number)
    elif "normalize" == args.subparser:
        parent_name = find_parent(args.folder, parents)
        if parent_name is None:
            assert False, "No such domain found: %s" % args.folder
        else:
            path = os.path.join(parents[parent_name], args.folder)
            normalize_problem(path, args.folder)
    elif "parse-problem" == args.subparser:
        # note that the full path must be given here
        p = args.problem
        if os.path.exists(p) and os.path.isfile(p):
            prob = parser.Problem(p, None)
            prob.dump()
        else:
            assert False, "No such file found: %s" % p
    elif "batch-parse" == args.subparser:
        batch_run(batch_parse, parents, args.parent)
    elif "batch-normalize" == args.subparser:
        batch_run(batch_normalize, parents, args.parent)
    elif "batch-ground" == args.subparser:
        batch_run(batch_ground, parents, args.parent)
    elif "batch-export" == args.subparser:
        batch_run(batch_export, parents, args.parent)
    elif "batch-export-ground" == args.subparser:
        f = lambda a, b: batch_export(a, b, True)
        batch_run(f, parents, args.parent)
    elif "export-ground" == args.subparser:
        parent_name = find_parent(args.folder, parents)
        if parent_name is None:
            assert False, "No such domain found: %s" % args.folder
        else:
            path = os.path.join(parents[parent_name], args.folder)
            # result = export_ground_problem (path, args.folder)
            result = export_ground_problem(path, args.folder, args.verbose is None)
            if result:
                print("Exported ground problem and domain are equivalent")
            else:
                print("Export is incorrect")
    elif "export" == args.subparser:
        parent_name = find_parent(args.folder, parents, args.parent)
        if parent_name is None:
            assert False, "No such domain found: %s" % args.folder
        else:
            path = os.path.join(parents[parent_name], args.folder)
            # result = export_problem (path, args.folder)
            result = export_problem(path, args.folder, args.verbose is None)
            if result:
                print("Exported problem and domain are equivalent")
            else:
                print("Export is incorrect")
