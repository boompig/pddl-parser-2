(define (domain btnd)
  (:types package bomb toilet)
  (:predicates
   (in ?p - package ?b - bomb)
   (defused ?b - bomb)
   (clog ?toilet - toilet)
   (stuck ?toilet - toilet))

  (:action senseIN
   :parameters (?p - package ?b - bomb)
   :observe (in ?p ?b))

  (:action dunk	
   :parameters (?p - package 
                ?b - bomb 
                ?t - toilet)
   :precondition (and (not (clog ?t)) (not (stuck ?t)))
   :effect (and (when (in ?p ?b) (defused ?b))
                (clog ?t)
                (nondet (stuck ?t))))

 (:action flush	
  :parameters (?t - toilet)
  :effect (not (clog ?t)))


   (:action unstick
       :parameters  (?toilet - toilet)
       :effect (and (when (stuck ?toilet) (not (stuck ?toilet)))))


)
