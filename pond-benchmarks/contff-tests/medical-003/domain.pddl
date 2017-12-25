(define (domain medical)
  (:types ILLNESS STAIN)
  (:predicates 	(dead) 
		(high_cell_count)
		(stain ?i - STAIN)
	  	(ill ?i - ILLNESS))

  (:action inspect-stain
   :parameters (?i - STAIN)
   :precondition (not (dead))
   :observe (stain ?i))

  (:action count_white_cells
   :parameters ()
   :precondition (not (dead))           
   :effect (and (when (ill i1) (high_cell_count))
		(when (ill i3) (high_cell_count))
	        (when (ill i5) (high_cell_count))))


  (:action stain
  :parameters ()
  :precondition (not (dead))
  :effect (and (when (ill i3) (stain s1))
	       (when (ill i4) (stain s1))
	       (when (ill i1) (stain s2))
	       (when (ill i2) (stain s2))
	       (when (ill i5) (stain s3))))


  (:action inspect-blood
  :parameters ()
  :precondition (not (dead))
  :observe (high_cell_count))

  (:action medicate
  :parameters (?i - ILLNESS)
  :precondition (and (not (dead)) (not (ill i0)))
  :effect (and (when (ill ?i) (ill i0))
	       (when (not (ill ?i)) (dead))))
)
	
  
  
