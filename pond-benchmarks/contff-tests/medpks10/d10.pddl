(define (domain medicalPKS10)
 	(:types STAIN ILLNESS)
 (:predicates 
 (dead)
    (stain ?i - STAIN) 
               (ill ?i - ILLNESS)
 
  )  

(:action inspect-stain
   :parameters (?i - STAIN)
   :precondition (not (dead))
   :observe (stain ?i))

 (:action medicate
  :parameters (?i - ILLNESS)
  :precondition (and (not (dead)) (not (ill i0)))
  :effect (and (when (ill ?i) (ill i0))
               (when (not (ill ?i)) (dead))))

(:action stain
                   :parameters ()
                   :precondition (not (dead))
                   :effect (and (when (ill i1) (stain s1))
 (when (ill i2) (stain s2))
 (when (ill i3) (stain s3))
 (when (ill i4) (stain s4))
 (when (ill i5) (stain s5))
 (when (ill i6) (stain s6))
 (when (ill i7) (stain s7))
 (when (ill i8) (stain s8))
 (when (ill i9) (stain s9))
 (when (ill i10) (stain s10))
))
)
