"""
This file just makes sure that the parser can actually handle all the benchmark files
"""

import os
from typing import Iterator, Tuple

from pond import parser
from pond.file_reader import read_all_files


def find_files_matching_prefix(parent_dir: str, prefix: str) -> Iterator[Tuple[str, str]]:
    """
    :param prefix       Filter based on the prefix. If empty string, return everything

    Wrapper around pond.file_reader

    Searching for a common prefixes in a parent directory
    Return generator over pairs of (problem_filename, domain_filename)
    """
    for problem_file, domain_file in read_all_files(parent_dir):
        assert domain_file is not None
        dirname = os.path.basename(problem_file)
        _, tail = os.path.split(dirname)
        if tail.startswith(prefix):
            yield problem_file, domain_file


def test_parse_problems_clg():
    parent_dir = "pond-benchmarks/CLG_benchmarks"
    n = 0
    for problem_file, domain_file in find_files_matching_prefix(parent_dir, ""):
        assert os.path.exists(problem_file)
        assert os.path.exists(domain_file)
        prob = parser.Problem(
            domain_file=domain_file,
            problem_file=problem_file
        )
        assert prob is not None
        n += 1
    assert n == 73


def test_parse_problems_contff():
    parent_dir = "pond-benchmarks/contff-tests"
    n = 0
    for problem_file, domain_file in find_files_matching_prefix(parent_dir, ""):
        assert os.path.exists(problem_file)
        assert os.path.exists(domain_file)
        prob = parser.Problem(
            domain_file=domain_file,
            problem_file=problem_file
        )
        assert prob is not None
        n += 1
    assert n == 69


def test_parse_problems_fsc():
    parent_dir = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/fsc"
    n = 0
    for problem_file, domain_file in find_files_matching_prefix(parent_dir, ""):
        assert os.path.exists(problem_file)
        assert os.path.exists(domain_file)
        prob = parser.Problem(
            domain_file=domain_file,
            problem_file=problem_file
        )
        assert prob is not None
        n += 1
    assert n == 52


def test_parse_domain_replanner_balls_colored():
    fname = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls/colored/domain.pddl"
    assert os.path.exists(fname)
    problem = parser.Problem(domain_file=fname)
    problem.dump()
    assert problem is not None


def test_parse_problem_replanner_balls_colored():
    domain_fname = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls/colored/domain.pddl"
    problem_fname = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls/colored/n3-b1-c2.pddl"
    assert os.path.exists(problem_fname)
    problem = parser.Problem(
        domain_file=domain_fname,
        problem_file=problem_fname
    )
    problem.dump()
    assert problem is not None


# def test_parse_problems_replanner():
#     """
#     NOTE: do not run this. It's too slow
#     """
#     parent_dir = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner"
#     n = 0
#     for problem_file, domain_file in find_files_matching_prefix(parent_dir, ""):
#         assert os.path.exists(problem_file)
#         assert os.path.exists(domain_file)
#         print("Found domain %s" % domain_file)
#         print('Parsing %s...' % problem_file)
#         prob = parser.Problem(
#             domain_file=domain_file,
#             problem_file=problem_file
#         )
#         assert prob is not None
#         n += 1
#     assert n == 42
