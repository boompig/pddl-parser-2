(define (problem p-nballs3-capacity3)
  (:domain domain-nballs3-capacity3)
  (:init (inA) (have0) (nballs-at-A-0)
         (oneof (nballs-at-B-1) (nballs-at-B-2) (nballs-at-B-3))
  )
  (:goal (all-balls-at-A))
)
