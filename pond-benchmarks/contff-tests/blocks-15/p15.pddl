

(define (problem BW-rand-15)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(on-table b3)
(on b12 b3)
(on b8 b12)
(on b14 b8)
(unknown (on b9 b14))
(unknown (clear b9))
(unknown (on b9 b6))
(unknown (on b6 b14))
(unknown (clear b6))
(unknown (on b6 b9))
(or
(not (on b9 b6))
(not (on b6 b9))
)
(or
(not (on b6 b9))
(not (on b9 b6))
)
(oneof
(clear b9)
(clear b6)
)
(oneof
(on b9 b14)
(on b6 b14)
)
(oneof
(on b9 b14)
(on b9 b6)
)
(oneof
(on b6 b14)
(on b6 b9)
)
(oneof
(clear b9)
(on b6 b9)
)
(oneof
(clear b6)
(on b9 b6)
)
(on-table b4)
(on b5 b4)
(unknown (on b1 b5))
(unknown (clear b1))
(unknown (on b1 b2))
(unknown (on b2 b5))
(unknown (clear b2))
(unknown (on b2 b1))
(or
(not (on b1 b2))
(not (on b2 b1))
)
(or
(not (on b2 b1))
(not (on b1 b2))
)
(oneof
(clear b1)
(clear b2)
)
(oneof
(on b1 b5)
(on b2 b5)
)
(oneof
(on b1 b5)
(on b1 b2)
)
(oneof
(on b2 b5)
(on b2 b1)
)
(oneof
(clear b1)
(on b2 b1)
)
(oneof
(clear b2)
(on b1 b2)
)
(on-table b7)
(on b13 b7)
(on b11 b13)
(unknown (on b10 b11))
(unknown (clear b10))
(unknown (on b10 b15))
(unknown (on b15 b11))
(unknown (clear b15))
(unknown (on b15 b10))
(or
(not (on b10 b15))
(not (on b15 b10))
)
(or
(not (on b15 b10))
(not (on b10 b15))
)
(oneof
(clear b10)
(clear b15)
)
(oneof
(on b10 b11)
(on b15 b11)
)
(oneof
(on b10 b11)
(on b10 b15)
)
(oneof
(on b15 b11)
(on b15 b10)
)
(oneof
(clear b10)
(on b15 b10)
)
(oneof
(clear b15)
(on b10 b15)
)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b3 b7)
(on b4 b6)
(on b6 b15)
(on b9 b4)
(on b11 b14)
(on b12 b2)
(on b14 b13)
(on b15 b10))
)
)


