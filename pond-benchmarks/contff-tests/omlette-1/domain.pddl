(define (domain omlette)
 (:predicates (unspoiled ?x) 
              (holding)
              (bowl ?bowl)
              (no ?num)
              (sum ?no1 ?no2 ?no3)
              (has ?bowl ?no-of-eggs)
              (add-one ?no1 ?no2)
              )

 (:action grab
  :parameters ()
  :precondition (not (holding))
  :effect (holding)
 )

 (:action break-in
  :parameters (?bowl ?eggs-before ?eggs-after)
  :precondition (and (bowl ?bowl) (holding) (has ?bowl ?eggs-before)
                     (no ?eggs-before) (no ?eggs-after)
                     (add-one ?eggs-before ?eggs-after))
  :effect (and (not (holding))
	       (has ?bowl ?eggs-after)
               (not (has ?bowl ?eggs-before))
               (nondet (not (unspoiled ?bowl))))
   )

  (:action clean
  :parameters (?bowl ?no-of-eggs)
  :precondition (and (bowl ?bowl) (not (holding)) 
                     (has ?bowl ?no-of-eggs)
                     (no ?no-of-eggs))
  :effect (and (has ?bowl n0) (unspoiled ?bowl) 
               (not (has ?bowl ?no-of-eggs)))
 )

 (:action pour 
  :parameters (?bowl1 ?bowl2 ?no1 ?no2 ?no3)
  :precondition (and (not (holding)) (has ?bowl1 ?no1)
                     (has ?bowl2 ?no2) (sum ?no1 ?no2 ?no3)
                     (bowl ?bowl1) (bowl ?bowl2) (not (= ?bowl1 ?bowl2))
                     (no ?no1) (no ?no2) (no ?no3))
  :effect (and (not (has ?bowl1 ?no1)) (has ?bowl1 n0)
	       (not (has ?bowl2 ?no2)) (has ?bowl2 ?no3)
               (unspoiled ?bowl1))
  )
)

