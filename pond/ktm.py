from . grounder import GroundProblem
from . predicate import Predicate
from . formula import And, Primitive

class Literal (object):
    """Thin wrapper around fluent (ground Predicate) object."""

    def __init__(self, fluent, negated):
        """Create a new Literal.
        Inputs:
            fluent:     The fluent which this literal wraps
                        A ground Predicate object.

            negated:    True iff this literal negates its fluent.

        """

        self.fluent = fluent
        self.negated = negated

    @property
    def name (self):
        if self.negated:
            return "not_%s" % self.fluent.name
        else:
            return self.fluent.name

def compile (problem, T, M, init_TL):
    """Returns new GroundProblem instance."""

    # verify inputs
    assert isinstance (problem, GroundProblem), \
        "The problem must be ground"
    assert isinstance(T, list) and \
        all([isinstance(t, Literal) for t in T]), \
        "Tags must be a list of Literals"
    assert isinstance(M, list) and \
        all([isinstance(m, tuple) for m in M]),\
        "Merges must be a list of tuples"
    assert isinstance(init_TL, list) and \
        all([isinstance(e, tuple) for e in init_TL]),\
        "Initial tag literals must be a list of tuples"

    fluents = []
    fluent_dict = {}
    conversion_dict = {}
    for fluent in problem.fluents:
        l_name = "K%s" % fluent.name
        kl = Predicate (l_name, None, fluent.ground_args)
        fluents.append (kl)
        fluent_dict[hash(kl)] = kl
        conversion_dict[hash(fluent)] = kl

        l_not_name = "K_not_%s" % fluent.name
        k_notl = Predicate (l_not_name, None, fluent.ground_args)
        fluents.append (k_notl)
        fluent_dict [hash(k_notl)] = k_notl

        for tag in T:
            l_name = "K_%s_|_%s" % (fluent.name, tag.name)
            kl = Predicate (l_name, None, fluent.ground_args)
            fluents.append (kl)
            fluent_dict[hash(kl)] = kl

            l_not_name = "K_not_%s_|_%s" % (fluent.name, tag.name)
            k_notl = Predicate (l_not_name, None, fluent.ground_args)
            fluents.append (k_notl)
            fluent_dict [hash(k_notl)] = k_notl
        
    print("* New fluents *")
    for fluent in fluents:
        print(fluent)

    #TODO new initial state

    print("* New goal state *")
    goal_fluents = []
    for arg in problem.goal.args:
        p = Primitive (conversion_dict[hash(arg.predicate)])
        goal_fluents.append (p)
        print(p)

    #TODO new action set

    #print "Compiled %s" % str(problem)
    #print "Tags : %s" % str(T)
    #print "Merges : %s" % str(M)

