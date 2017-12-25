





(define (problem medicalPKS10)


(:domain medicalPKS10)


(:objects i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 - ILLNESS
s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - STAIN)
 (:init 
 
 (stain s0)

(unknown (ill i1))
(unknown (ill i2))
(unknown (ill i3))
(unknown (ill i4))
(unknown (ill i5))
(unknown (ill i6))
(unknown (ill i7))
(unknown (ill i8))
(unknown (ill i9))
(unknown (ill i10))

(oneof (ill i1) (ill i2) (ill i3) (ill i4) (ill i5) (ill i6) (ill i7) (ill i8) (ill i9) (ill i10) )

)
 (:goal (and (ill i0) (not (dead)))))


