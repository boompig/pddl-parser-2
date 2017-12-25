(define (problem prize5x2)
  (:domain grid-A)
  (:objects x1 x2 x3 x4 x5 - xpos y1 y2 - ypos)
  (:init
    (suc-x x1 x2) (suc-x x2 x3) (suc-x x3 x4) (suc-x x4 x5)
    (suc-y y1 y2)
    (top-row y2) (bottom-row y1) (leftmost-col x1) (rightmost-col x5)
    (agent-x x1) (agent-y y1)
    (oneof (prize x1 y1) (prize x2 y1) (prize x3 y1) (prize x4 y1) (prize x5 y1)
           (prize x1 y2) (prize x2 y2) (prize x3 y2) (prize x4 y2) (prize x5 y2)
    )
  )
  (:goal (got-it))
)

