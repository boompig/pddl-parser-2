(define (problem medical2)
(:domain medical)
(:objects i0 i1 i2 i3 i4 i5 - ILLNESS
	  s0 s1 s2 s3 - STAIN)
 (:init (stain s0)

(unknown (ill i1))
(unknown (ill i2))
(unknown (ill i3))
(unknown (ill i4))



	(oneof (ill i1) (ill i2) (ill i3) (ill i4)))

 (:goal (and (ill i0) 
	     (not (dead)))))
