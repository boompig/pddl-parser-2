


(define (problem omlette-2)
(:domain omlette)
(:objects bowl1 bowl2 n0 n1 n2 )
(:init
(bowl bowl1)
(bowl bowl2)
(no n0)
(no n1)
(no n2)
(unspoiled bowl1)
(unspoiled bowl2)
(has bowl1 n0)
(has bowl2 n0)
(add-one n0 n1)
(add-one n1 n2)
(sum n1 n1 n2)
)
(:goal
(and
(unspoiled bowl2)
(has bowl2 n2)
)
)
)


