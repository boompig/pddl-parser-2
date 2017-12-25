(define (problem n9)
    (:domain colored-balls)
    (:objects p1 p2 p3 p4 p5 p6 p7 p8 p9 - pos)
    (:init
        (suc p1 p2) (suc p2 p3) (suc p3 p4) (suc p4 p5) (suc p5 p6) (suc p6 p7) (suc p7 p8) (suc p8 p9)
        (wall p2 p1) (wall p2 p2) (wall p2 p3) (wall p2 p4) (wall p2 p5) (wall p2 p6) (wall p2 p7) (wall p2 p8) (wall p2 p9)
        (wall p4 p1) (wall p4 p2) (wall p4 p3) (wall p4 p4) (wall p4 p5) (wall p4 p6) (wall p4 p7) (wall p4 p8) (wall p4 p9)
        (wall p6 p1) (wall p6 p2) (wall p6 p3) (wall p6 p4) (wall p6 p5) (wall p6 p6) (wall p6 p7) (wall p6 p8) (wall p6 p9)
        (wall p8 p1) (wall p8 p2) (wall p8 p3) (wall p8 p4) (wall p8 p5) (wall p8 p6) (wall p8 p7) (wall p8 p8) (wall p8 p9)
        (at p1 p5)
        (invariant (door p2 p1) (door p2 p2) (door p2 p3) (door p2 p4) (door p2 p5) (door p2 p6) (door p2 p7) (door p2 p8) (door p2 p9))
        (invariant (door p4 p1) (door p4 p2) (door p4 p3) (door p4 p4) (door p4 p5) (door p4 p6) (door p4 p7) (door p4 p8) (door p4 p9))
        (invariant (door p6 p1) (door p6 p2) (door p6 p3) (door p6 p4) (door p6 p5) (door p6 p6) (door p6 p7) (door p6 p8) (door p6 p9))
        (invariant (door p8 p1) (door p8 p2) (door p8 p3) (door p8 p4) (door p8 p5) (door p8 p6) (door p8 p7) (door p8 p8) (door p8 p9))
    )
    (:hidden (door p2 p4) (door p4 p2) (door p6 p3) (door p8 p3))
    (:goal (at p9 p5))
)
