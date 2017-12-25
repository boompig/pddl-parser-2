


(define (problem btnd-10)
(:domain btnd)
(:objects 
b0 b1 - bomb
p0 
p1 
p2 
p3 
p4 
p5 
p6 
p7 
p8 
p9 
- package
t0 - toilet
)
(:init
(in p0 b0)
(unknown (in p1 b1))
(unknown (in p2 b1))
(unknown (in p3 b1))
(unknown (in p4 b1))
(unknown (in p5 b1))
(unknown (in p6 b1))
(unknown (in p7 b1))
(unknown (in p8 b1))
(unknown (in p9 b1))
(oneof
(in p1 b1)
(in p2 b1)
(in p3 b1)
(in p4 b1)
(in p5 b1)
(in p6 b1)
(in p7 b1)
(in p8 b1)
(in p9 b1)
)
)
(:goal (and (defused b0) (defused b1)))
)


