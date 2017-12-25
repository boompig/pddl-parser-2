
(define (problem problem-5-11)
    (:domain localize-5)
    (:init
        ; possible initial locations
        (invariant (at p1-1) (at p1-2) (at p1-3) (at p1-4) (at p1-5) (at p2-1) (at p2-3) (at p2-5) (at p3-1) (at p3-3) (at p3-5) (at p4-1) (at p4-3) (at p4-5) (at p5-1) (at p5-2) (at p5-3) (at p5-4) (at p5-5))

        ; invariants
        (invariant (not (ok)) (free-up) (not (at p1-1)))
        (invariant (not (ok)) (free-right) (not (at p1-1)))
        (invariant (not (ok)) (not (free-down)) (not (at p1-1)))
        (invariant (not (ok)) (not (free-left)) (not (at p1-1)))
        (invariant (not (ok)) (free-up) (not (at p1-2)))
        (invariant (not (ok)) (not (free-right)) (not (at p1-2)))
        (invariant (not (ok)) (free-down) (not (at p1-2)))
        (invariant (not (ok)) (not (free-left)) (not (at p1-2)))
        (invariant (not (ok)) (free-up) (not (at p1-3)))
        (invariant (not (ok)) (free-right) (not (at p1-3)))
        (invariant (not (ok)) (free-down) (not (at p1-3)))
        (invariant (not (ok)) (not (free-left)) (not (at p1-3)))
        (invariant (not (ok)) (free-up) (not (at p1-4)))
        (invariant (not (ok)) (not (free-right)) (not (at p1-4)))
        (invariant (not (ok)) (free-down) (not (at p1-4)))
        (invariant (not (ok)) (not (free-left)) (not (at p1-4)))
        (invariant (not (ok)) (not (free-up)) (not (at p1-5)))
        (invariant (not (ok)) (free-right) (not (at p1-5)))
        (invariant (not (ok)) (free-down) (not (at p1-5)))
        (invariant (not (ok)) (not (free-left)) (not (at p1-5)))
        (invariant (not (ok)) (not (free-up)) (not (at p2-1)))
        (invariant (not (ok)) (free-right) (not (at p2-1)))
        (invariant (not (ok)) (not (free-down)) (not (at p2-1)))
        (invariant (not (ok)) (free-left) (not (at p2-1)))
        (invariant (not (ok)) (not (free-up)) (not (at p2-3)))
        (invariant (not (ok)) (free-right) (not (at p2-3)))
        (invariant (not (ok)) (not (free-down)) (not (at p2-3)))
        (invariant (not (ok)) (free-left) (not (at p2-3)))
        (invariant (not (ok)) (not (free-up)) (not (at p2-5)))
        (invariant (not (ok)) (free-right) (not (at p2-5)))
        (invariant (not (ok)) (not (free-down)) (not (at p2-5)))
        (invariant (not (ok)) (free-left) (not (at p2-5)))
        (invariant (not (ok)) (not (free-up)) (not (at p3-1)))
        (invariant (not (ok)) (free-right) (not (at p3-1)))
        (invariant (not (ok)) (not (free-down)) (not (at p3-1)))
        (invariant (not (ok)) (free-left) (not (at p3-1)))
        (invariant (not (ok)) (not (free-up)) (not (at p3-3)))
        (invariant (not (ok)) (free-right) (not (at p3-3)))
        (invariant (not (ok)) (not (free-down)) (not (at p3-3)))
        (invariant (not (ok)) (free-left) (not (at p3-3)))
        (invariant (not (ok)) (not (free-up)) (not (at p3-5)))
        (invariant (not (ok)) (free-right) (not (at p3-5)))
        (invariant (not (ok)) (not (free-down)) (not (at p3-5)))
        (invariant (not (ok)) (free-left) (not (at p3-5)))
        (invariant (not (ok)) (not (free-up)) (not (at p4-1)))
        (invariant (not (ok)) (free-right) (not (at p4-1)))
        (invariant (not (ok)) (not (free-down)) (not (at p4-1)))
        (invariant (not (ok)) (free-left) (not (at p4-1)))
        (invariant (not (ok)) (not (free-up)) (not (at p4-3)))
        (invariant (not (ok)) (free-right) (not (at p4-3)))
        (invariant (not (ok)) (not (free-down)) (not (at p4-3)))
        (invariant (not (ok)) (free-left) (not (at p4-3)))
        (invariant (not (ok)) (not (free-up)) (not (at p4-5)))
        (invariant (not (ok)) (free-right) (not (at p4-5)))
        (invariant (not (ok)) (not (free-down)) (not (at p4-5)))
        (invariant (not (ok)) (free-left) (not (at p4-5)))
        (invariant (not (ok)) (free-up) (not (at p5-1)))
        (invariant (not (ok)) (not (free-right)) (not (at p5-1)))
        (invariant (not (ok)) (not (free-down)) (not (at p5-1)))
        (invariant (not (ok)) (free-left) (not (at p5-1)))
        (invariant (not (ok)) (free-up) (not (at p5-2)))
        (invariant (not (ok)) (not (free-right)) (not (at p5-2)))
        (invariant (not (ok)) (free-down) (not (at p5-2)))
        (invariant (not (ok)) (not (free-left)) (not (at p5-2)))
        (invariant (not (ok)) (free-up) (not (at p5-3)))
        (invariant (not (ok)) (not (free-right)) (not (at p5-3)))
        (invariant (not (ok)) (free-down) (not (at p5-3)))
        (invariant (not (ok)) (free-left) (not (at p5-3)))
        (invariant (not (ok)) (free-up) (not (at p5-4)))
        (invariant (not (ok)) (not (free-right)) (not (at p5-4)))
        (invariant (not (ok)) (free-down) (not (at p5-4)))
        (invariant (not (ok)) (not (free-left)) (not (at p5-4)))
        (invariant (not (ok)) (not (free-up)) (not (at p5-5)))
        (invariant (not (ok)) (not (free-right)) (not (at p5-5)))
        (invariant (not (ok)) (free-down) (not (at p5-5)))
        (invariant (not (ok)) (free-left) (not (at p5-5)))
    )
    (:hidden (at p2-5) (free-right) (free-left))
    (:goal (at p5-5))
)

