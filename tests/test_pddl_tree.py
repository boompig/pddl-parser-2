from pond.pddl_tree import PDDL_Tree
import os
from pond.file_reader import recursively_find_files


def test_create_tree_replanner_balls():
    d = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls"
    n = 0
    for fname in recursively_find_files(d):
        assert os.path.exists(fname)
        tree = PDDL_Tree.create(fname)
        assert tree is not None
        n += 1
    assert n == 156


def test_create_tree_clg():
    d = "pond-benchmarks/CLG_benchmarks"
    n = 0
    for fname in recursively_find_files(d):
        assert os.path.exists(fname)
        tree = PDDL_Tree.create(fname)
        assert tree is not None
        n += 1
    assert n == 146


def test_create_tree_contff():
    d = "pond-benchmarks/contff-tests"
    n = 0
    for fname in recursively_find_files(d):
        assert os.path.exists(fname)
        tree = PDDL_Tree.create(fname)
        assert tree is not None
        n += 1
    assert n == 138


def test_create_tree_fsc():
    d = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/fsc"
    n = 0
    for fname in recursively_find_files(d):
        assert os.path.exists(fname)
        tree = PDDL_Tree.create(fname)
        assert tree is not None
        n += 1
    assert n == 66


def test_create_tree_replanner_rocksample():
    """
    Warning: this will take a while because there are a lot of samples
    """
    d = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/rocksample"
    n = 0
    for fname in recursively_find_files(d):
        assert os.path.exists(fname)
        tree = PDDL_Tree.create(fname)
        assert tree is not None
        n += 1
    assert n == 402