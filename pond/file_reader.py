"""
This is a utility to more easily read any directories
containing a mix of PDDL problem and domain files
"""

import logging
import os
from typing import List, Tuple, Iterator, Optional, Dict
from .pddl_tree import PDDL_Tree


def recursively_find_files(d: str) -> List[str]:
    """
    d is fully qualified directory path
    return the absolute path to all relevant files in d
    """
    contents = [f for f in os.listdir(d) if not f.endswith(".swp") and not f.endswith(".orig")]
    fnames = []
    for f in contents:
        path = os.path.join(d, f)
        if os.path.isdir(path):
            recurse_fnames = recursively_find_files(path)
            fnames.extend(recurse_fnames)
        else:
            fnames.append(path)
    return fnames


def read_all_files(d: str) -> Iterator[Tuple[str, Optional[str]]]:
    """
    Inputs:
        d               directory to search in

    Outputs:            A generator over tuples (pairs)
        first item:     problem filename (path)
        second item:    matching domain filename (path), if found; otherwise None
    """

    # step 1: find all the files
    fnames = recursively_find_files(d)

    # step 2: parse each file and determine the matching domain
    domain_map = {}  # type: Dict[str, str]
    domain_files = []
    problem_files = []
    problem_domain_map = {}

    for fname in fnames:
        tree = PDDL_Tree.create(fname)

        if "problem" in tree:
            problem_files.append(fname)
            domain = tree[":domain"].named_children()[0]
            problem_domain_map[fname] = domain
        elif "domain" in tree:
            domain_files.append(fname)
            # if there are multiple files for a given domain, just return the first one
            domain = tree["domain"].named_children()[0]
            domain_map[domain] = fname
        else:
            logging.warning(
                "found a file that's neither a problem nor a domain file: %s. Ignoring.", fname
            )

    # now that we've read all the files, match them
    for problem_file in problem_files:
        domain = problem_domain_map[problem_file]
        if domain in domain_map:
            yield problem_file, domain_map[domain]
        else:
            logging.warning(
                "No domain file found for domain %s (problem file %s)", domain, problem_file
            )
            yield problem_file, None
