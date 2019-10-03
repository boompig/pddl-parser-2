import os
from pond.file_reader import read_all_files
from pond.parser import Problem


def test_read_all_files_replanner_balls():
    d = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/replanner/balls"
    n = 0
    for p_fname, d_fname in read_all_files(d):
        # make sure valid paths are returned
        assert os.path.exists(p_fname)
        assert os.path.exists(d_fname)
        # resultant domain and problem files should go together to create a problem
        problem = Problem(
            d_fname,
            p_fname
        )
        assert problem is not None
        n += 1
    assert n == 154


def test_read_all_files_fsc():
    d = "pond-benchmarks/cp2fsc-and-replanner-benchmarks/fsc"
    n = 0
    for p_fname, d_fname in read_all_files(d):
        assert d_fname is not None
        # make sure valid paths are returned
        assert os.path.exists(p_fname)
        assert os.path.exists(d_fname)
        # resultant domain and problem files should go together to create a problem
        problem = Problem(
            d_fname,
            p_fname
        )
        assert problem is not None
        n += 1
    assert n == 52


def test_read_all_files_clg():
    d = "pond-benchmarks/CLG_benchmarks"
    n = 0
    for p_fname, d_fname in read_all_files(d):
        assert d_fname is not None
        # make sure valid paths are returned
        assert os.path.exists(p_fname)
        assert os.path.exists(d_fname)
        # resultant domain and problem files should go together to create a problem
        problem = Problem(
            d_fname,
            p_fname
        )
        assert problem is not None
        n += 1
    assert n == 200