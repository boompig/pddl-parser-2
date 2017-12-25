
(define (problem problem-10-10-13318)
    (:domain RockSample)
    (:objects
        p0-0 p0-1 p0-2 p0-3 p0-4 p0-5 p0-6 p0-7 p0-8 p0-9 p1-0 p1-1 p1-2 p1-3 p1-4 p1-5 p1-6 p1-7 p1-8 p1-9 p2-0 p2-1 p2-2 p2-3 p2-4 p2-5 p2-6 p2-7 p2-8 p2-9 p3-0 p3-1 p3-2 p3-3 p3-4 p3-5 p3-6 p3-7 p3-8 p3-9 p4-0 p4-1 p4-2 p4-3 p4-4 p4-5 p4-6 p4-7 p4-8 p4-9 p5-0 p5-1 p5-2 p5-3 p5-4 p5-5 p5-6 p5-7 p5-8 p5-9 p6-0 p6-1 p6-2 p6-3 p6-4 p6-5 p6-6 p6-7 p6-8 p6-9 p7-0 p7-1 p7-2 p7-3 p7-4 p7-5 p7-6 p7-7 p7-8 p7-9 p8-0 p8-1 p8-2 p8-3 p8-4 p8-5 p8-6 p8-7 p8-8 p8-9 p9-0 p9-1 p9-2 p9-3 p9-4 p9-5 p9-6 p9-7 p9-8 p9-9 - LOCATION
        r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 - ROCK
    )

    (:init
        ;; adjacencies
        (adj p0-0 p0-1) (adj p0-0 p1-0) (adj p0-1 p0-0) (adj p0-1 p0-2) (adj p0-1 p1-1) (adj p0-2 p0-1) (adj p0-2 p0-3) (adj p0-2 p1-2) (adj p0-3 p0-2) (adj p0-3 p0-4) (adj p0-3 p1-3) (adj p0-4 p0-3) (adj p0-4 p0-5) (adj p0-4 p1-4) (adj p0-5 p0-4) (adj p0-5 p0-6) (adj p0-5 p1-5) (adj p0-6 p0-5) (adj p0-6 p0-7) (adj p0-6 p1-6) (adj p0-7 p0-6) (adj p0-7 p0-8) (adj p0-7 p1-7) (adj p0-8 p0-7) (adj p0-8 p0-9) (adj p0-8 p1-8) (adj p0-9 p0-8) (adj p0-9 p1-9) (adj p1-0 p0-0) (adj p1-0 p1-1) (adj p1-0 p2-0) (adj p1-1 p0-1) (adj p1-1 p1-0) (adj p1-1 p1-2) (adj p1-1 p2-1) (adj p1-2 p0-2) (adj p1-2 p1-1) (adj p1-2 p1-3) (adj p1-2 p2-2) (adj p1-3 p0-3) (adj p1-3 p1-2) (adj p1-3 p1-4) (adj p1-3 p2-3) (adj p1-4 p0-4) (adj p1-4 p1-3) (adj p1-4 p1-5) (adj p1-4 p2-4) (adj p1-5 p0-5) (adj p1-5 p1-4) (adj p1-5 p1-6) (adj p1-5 p2-5) (adj p1-6 p0-6) (adj p1-6 p1-5) (adj p1-6 p1-7) (adj p1-6 p2-6) (adj p1-7 p0-7) (adj p1-7 p1-6) (adj p1-7 p1-8) (adj p1-7 p2-7) (adj p1-8 p0-8) (adj p1-8 p1-7) (adj p1-8 p1-9) (adj p1-8 p2-8) (adj p1-9 p0-9) (adj p1-9 p1-8) (adj p1-9 p2-9) (adj p2-0 p1-0) (adj p2-0 p2-1) (adj p2-0 p3-0) (adj p2-1 p1-1) (adj p2-1 p2-0) (adj p2-1 p2-2) (adj p2-1 p3-1) (adj p2-2 p1-2) (adj p2-2 p2-1) (adj p2-2 p2-3) (adj p2-2 p3-2) (adj p2-3 p1-3) (adj p2-3 p2-2) (adj p2-3 p2-4) (adj p2-3 p3-3) (adj p2-4 p1-4) (adj p2-4 p2-3) (adj p2-4 p2-5) (adj p2-4 p3-4) (adj p2-5 p1-5) (adj p2-5 p2-4) (adj p2-5 p2-6) (adj p2-5 p3-5) (adj p2-6 p1-6) (adj p2-6 p2-5) (adj p2-6 p2-7) (adj p2-6 p3-6) (adj p2-7 p1-7) (adj p2-7 p2-6) (adj p2-7 p2-8) (adj p2-7 p3-7) (adj p2-8 p1-8) (adj p2-8 p2-7) (adj p2-8 p2-9) (adj p2-8 p3-8) (adj p2-9 p1-9) (adj p2-9 p2-8) (adj p2-9 p3-9) (adj p3-0 p2-0) (adj p3-0 p3-1) (adj p3-0 p4-0) (adj p3-1 p2-1) (adj p3-1 p3-0) (adj p3-1 p3-2) (adj p3-1 p4-1) (adj p3-2 p2-2) (adj p3-2 p3-1) (adj p3-2 p3-3) (adj p3-2 p4-2) (adj p3-3 p2-3) (adj p3-3 p3-2) (adj p3-3 p3-4) (adj p3-3 p4-3) (adj p3-4 p2-4) (adj p3-4 p3-3) (adj p3-4 p3-5) (adj p3-4 p4-4) (adj p3-5 p2-5) (adj p3-5 p3-4) (adj p3-5 p3-6) (adj p3-5 p4-5) (adj p3-6 p2-6) (adj p3-6 p3-5) (adj p3-6 p3-7) (adj p3-6 p4-6) (adj p3-7 p2-7) (adj p3-7 p3-6) (adj p3-7 p3-8) (adj p3-7 p4-7) (adj p3-8 p2-8) (adj p3-8 p3-7) (adj p3-8 p3-9) (adj p3-8 p4-8) (adj p3-9 p2-9) (adj p3-9 p3-8) (adj p3-9 p4-9) (adj p4-0 p3-0) (adj p4-0 p4-1) (adj p4-0 p5-0) (adj p4-1 p3-1) (adj p4-1 p4-0) (adj p4-1 p4-2) (adj p4-1 p5-1) (adj p4-2 p3-2) (adj p4-2 p4-1) (adj p4-2 p4-3) (adj p4-2 p5-2) (adj p4-3 p3-3) (adj p4-3 p4-2) (adj p4-3 p4-4) (adj p4-3 p5-3) (adj p4-4 p3-4) (adj p4-4 p4-3) (adj p4-4 p4-5) (adj p4-4 p5-4) (adj p4-5 p3-5) (adj p4-5 p4-4) (adj p4-5 p4-6) (adj p4-5 p5-5) (adj p4-6 p3-6) (adj p4-6 p4-5) (adj p4-6 p4-7) (adj p4-6 p5-6) (adj p4-7 p3-7) (adj p4-7 p4-6) (adj p4-7 p4-8) (adj p4-7 p5-7) (adj p4-8 p3-8) (adj p4-8 p4-7) (adj p4-8 p4-9) (adj p4-8 p5-8) (adj p4-9 p3-9) (adj p4-9 p4-8) (adj p4-9 p5-9) (adj p5-0 p4-0) (adj p5-0 p5-1) (adj p5-0 p6-0) (adj p5-1 p4-1) (adj p5-1 p5-0) (adj p5-1 p5-2) (adj p5-1 p6-1) (adj p5-2 p4-2) (adj p5-2 p5-1) (adj p5-2 p5-3) (adj p5-2 p6-2) (adj p5-3 p4-3) (adj p5-3 p5-2) (adj p5-3 p5-4) (adj p5-3 p6-3) (adj p5-4 p4-4) (adj p5-4 p5-3) (adj p5-4 p5-5) (adj p5-4 p6-4) (adj p5-5 p4-5) (adj p5-5 p5-4) (adj p5-5 p5-6) (adj p5-5 p6-5) (adj p5-6 p4-6) (adj p5-6 p5-5) (adj p5-6 p5-7) (adj p5-6 p6-6) (adj p5-7 p4-7) (adj p5-7 p5-6) (adj p5-7 p5-8) (adj p5-7 p6-7) (adj p5-8 p4-8) (adj p5-8 p5-7) (adj p5-8 p5-9) (adj p5-8 p6-8) (adj p5-9 p4-9) (adj p5-9 p5-8) (adj p5-9 p6-9) (adj p6-0 p5-0) (adj p6-0 p6-1) (adj p6-0 p7-0) (adj p6-1 p5-1) (adj p6-1 p6-0) (adj p6-1 p6-2) (adj p6-1 p7-1) (adj p6-2 p5-2) (adj p6-2 p6-1) (adj p6-2 p6-3) (adj p6-2 p7-2) (adj p6-3 p5-3) (adj p6-3 p6-2) (adj p6-3 p6-4) (adj p6-3 p7-3) (adj p6-4 p5-4) (adj p6-4 p6-3) (adj p6-4 p6-5) (adj p6-4 p7-4) (adj p6-5 p5-5) (adj p6-5 p6-4) (adj p6-5 p6-6) (adj p6-5 p7-5) (adj p6-6 p5-6) (adj p6-6 p6-5) (adj p6-6 p6-7) (adj p6-6 p7-6) (adj p6-7 p5-7) (adj p6-7 p6-6) (adj p6-7 p6-8) (adj p6-7 p7-7) (adj p6-8 p5-8) (adj p6-8 p6-7) (adj p6-8 p6-9) (adj p6-8 p7-8) (adj p6-9 p5-9) (adj p6-9 p6-8) (adj p6-9 p7-9) (adj p7-0 p6-0) (adj p7-0 p7-1) (adj p7-0 p8-0) (adj p7-1 p6-1) (adj p7-1 p7-0) (adj p7-1 p7-2) (adj p7-1 p8-1) (adj p7-2 p6-2) (adj p7-2 p7-1) (adj p7-2 p7-3) (adj p7-2 p8-2) (adj p7-3 p6-3) (adj p7-3 p7-2) (adj p7-3 p7-4) (adj p7-3 p8-3) (adj p7-4 p6-4) (adj p7-4 p7-3) (adj p7-4 p7-5) (adj p7-4 p8-4) (adj p7-5 p6-5) (adj p7-5 p7-4) (adj p7-5 p7-6) (adj p7-5 p8-5) (adj p7-6 p6-6) (adj p7-6 p7-5) (adj p7-6 p7-7) (adj p7-6 p8-6) (adj p7-7 p6-7) (adj p7-7 p7-6) (adj p7-7 p7-8) (adj p7-7 p8-7) (adj p7-8 p6-8) (adj p7-8 p7-7) (adj p7-8 p7-9) (adj p7-8 p8-8) (adj p7-9 p6-9) (adj p7-9 p7-8) (adj p7-9 p8-9) (adj p8-0 p7-0) (adj p8-0 p8-1) (adj p8-0 p9-0) (adj p8-1 p7-1) (adj p8-1 p8-0) (adj p8-1 p8-2) (adj p8-1 p9-1) (adj p8-2 p7-2) (adj p8-2 p8-1) (adj p8-2 p8-3) (adj p8-2 p9-2) (adj p8-3 p7-3) (adj p8-3 p8-2) (adj p8-3 p8-4) (adj p8-3 p9-3) (adj p8-4 p7-4) (adj p8-4 p8-3) (adj p8-4 p8-5) (adj p8-4 p9-4) (adj p8-5 p7-5) (adj p8-5 p8-4) (adj p8-5 p8-6) (adj p8-5 p9-5) (adj p8-6 p7-6) (adj p8-6 p8-5) (adj p8-6 p8-7) (adj p8-6 p9-6) (adj p8-7 p7-7) (adj p8-7 p8-6) (adj p8-7 p8-8) (adj p8-7 p9-7) (adj p8-8 p7-8) (adj p8-8 p8-7) (adj p8-8 p8-9) (adj p8-8 p9-8) (adj p8-9 p7-9) (adj p8-9 p8-8) (adj p8-9 p9-9) (adj p9-0 p8-0) (adj p9-0 p9-1) (adj p9-1 p8-1) (adj p9-1 p9-0) (adj p9-1 p9-2) (adj p9-2 p8-2) (adj p9-2 p9-1) (adj p9-2 p9-3) (adj p9-3 p8-3) (adj p9-3 p9-2) (adj p9-3 p9-4) (adj p9-4 p8-4) (adj p9-4 p9-3) (adj p9-4 p9-5) (adj p9-5 p8-5) (adj p9-5 p9-4) (adj p9-5 p9-6) (adj p9-6 p8-6) (adj p9-6 p9-5) (adj p9-6 p9-7) (adj p9-7 p8-7) (adj p9-7 p9-6) (adj p9-7 p9-8) (adj p9-8 p8-8) (adj p9-8 p9-7) (adj p9-8 p9-9) (adj p9-9 p8-9) (adj p9-9 p9-8)

        ;; agent configuration
        (agent-at p0-8)
        (antenna-height h0)
        (not-sensing)

        ;; rock configuration
        (rock-at r0 p1-6)
        (invariant (good r0) (not (good r0)))
        (rock-at r1 p8-6)
        (invariant (good r1) (not (good r1)))
        (rock-at r2 p6-0)
        (invariant (good r2) (not (good r2)))
        (rock-at r3 p1-3)
        (invariant (good r3) (not (good r3)))
        (rock-at r4 p3-2)
        (invariant (good r4) (not (good r4)))
        (rock-at r5 p3-9)
        (invariant (good r5) (not (good r5)))
        (rock-at r6 p7-9)
        (invariant (good r6) (not (good r6)))
        (rock-at r7 p5-9)
        (invariant (good r7) (not (good r7)))
        (rock-at r8 p4-3)
        (invariant (good r8) (not (good r8)))
        (rock-at r9 p4-5)
        (invariant (good r9) (not (good r9)))

        ;; range calculation
        (in-range r0 p0-5 h2)
        (in-range r0 p0-6 h1)
        (in-range r0 p0-6 h2)
        (in-range r0 p0-7 h2)
        (in-range r0 p1-4 h2)
        (in-range r0 p1-5 h1)
        (in-range r0 p1-5 h2)
        (in-range r0 p1-6 h0)
        (in-range r0 p1-6 h1)
        (in-range r0 p1-6 h2)
        (in-range r0 p1-7 h1)
        (in-range r0 p1-7 h2)
        (in-range r0 p1-8 h2)
        (in-range r0 p2-5 h2)
        (in-range r0 p2-6 h1)
        (in-range r0 p2-6 h2)
        (in-range r0 p2-7 h2)
        (in-range r0 p3-6 h2)
        (in-range r1 p6-6 h2)
        (in-range r1 p7-5 h2)
        (in-range r1 p7-6 h1)
        (in-range r1 p7-6 h2)
        (in-range r1 p7-7 h2)
        (in-range r1 p8-4 h2)
        (in-range r1 p8-5 h1)
        (in-range r1 p8-5 h2)
        (in-range r1 p8-6 h0)
        (in-range r1 p8-6 h1)
        (in-range r1 p8-6 h2)
        (in-range r1 p8-7 h1)
        (in-range r1 p8-7 h2)
        (in-range r1 p8-8 h2)
        (in-range r1 p9-5 h2)
        (in-range r1 p9-6 h1)
        (in-range r1 p9-6 h2)
        (in-range r1 p9-7 h2)
        (in-range r2 p4-0 h2)
        (in-range r2 p5-0 h1)
        (in-range r2 p5-0 h2)
        (in-range r2 p5-1 h2)
        (in-range r2 p6-0 h0)
        (in-range r2 p6-0 h1)
        (in-range r2 p6-0 h2)
        (in-range r2 p6-1 h1)
        (in-range r2 p6-1 h2)
        (in-range r2 p6-2 h2)
        (in-range r2 p7-0 h1)
        (in-range r2 p7-0 h2)
        (in-range r2 p7-1 h2)
        (in-range r2 p8-0 h2)
        (in-range r3 p0-2 h2)
        (in-range r3 p0-3 h1)
        (in-range r3 p0-3 h2)
        (in-range r3 p0-4 h2)
        (in-range r3 p1-1 h2)
        (in-range r3 p1-2 h1)
        (in-range r3 p1-2 h2)
        (in-range r3 p1-3 h0)
        (in-range r3 p1-3 h1)
        (in-range r3 p1-3 h2)
        (in-range r3 p1-4 h1)
        (in-range r3 p1-4 h2)
        (in-range r3 p1-5 h2)
        (in-range r3 p2-2 h2)
        (in-range r3 p2-3 h1)
        (in-range r3 p2-3 h2)
        (in-range r3 p2-4 h2)
        (in-range r3 p3-3 h2)
        (in-range r4 p1-2 h2)
        (in-range r4 p2-1 h2)
        (in-range r4 p2-2 h1)
        (in-range r4 p2-2 h2)
        (in-range r4 p2-3 h2)
        (in-range r4 p3-0 h2)
        (in-range r4 p3-1 h1)
        (in-range r4 p3-1 h2)
        (in-range r4 p3-2 h0)
        (in-range r4 p3-2 h1)
        (in-range r4 p3-2 h2)
        (in-range r4 p3-3 h1)
        (in-range r4 p3-3 h2)
        (in-range r4 p3-4 h2)
        (in-range r4 p4-1 h2)
        (in-range r4 p4-2 h1)
        (in-range r4 p4-2 h2)
        (in-range r4 p4-3 h2)
        (in-range r4 p5-2 h2)
        (in-range r5 p1-9 h2)
        (in-range r5 p2-8 h2)
        (in-range r5 p2-9 h1)
        (in-range r5 p2-9 h2)
        (in-range r5 p3-7 h2)
        (in-range r5 p3-8 h1)
        (in-range r5 p3-8 h2)
        (in-range r5 p3-9 h0)
        (in-range r5 p3-9 h1)
        (in-range r5 p3-9 h2)
        (in-range r5 p4-8 h2)
        (in-range r5 p4-9 h1)
        (in-range r5 p4-9 h2)
        (in-range r5 p5-9 h2)
        (in-range r6 p5-9 h2)
        (in-range r6 p6-8 h2)
        (in-range r6 p6-9 h1)
        (in-range r6 p6-9 h2)
        (in-range r6 p7-7 h2)
        (in-range r6 p7-8 h1)
        (in-range r6 p7-8 h2)
        (in-range r6 p7-9 h0)
        (in-range r6 p7-9 h1)
        (in-range r6 p7-9 h2)
        (in-range r6 p8-8 h2)
        (in-range r6 p8-9 h1)
        (in-range r6 p8-9 h2)
        (in-range r6 p9-9 h2)
        (in-range r7 p3-9 h2)
        (in-range r7 p4-8 h2)
        (in-range r7 p4-9 h1)
        (in-range r7 p4-9 h2)
        (in-range r7 p5-7 h2)
        (in-range r7 p5-8 h1)
        (in-range r7 p5-8 h2)
        (in-range r7 p5-9 h0)
        (in-range r7 p5-9 h1)
        (in-range r7 p5-9 h2)
        (in-range r7 p6-8 h2)
        (in-range r7 p6-9 h1)
        (in-range r7 p6-9 h2)
        (in-range r7 p7-9 h2)
        (in-range r8 p2-3 h2)
        (in-range r8 p3-2 h2)
        (in-range r8 p3-3 h1)
        (in-range r8 p3-3 h2)
        (in-range r8 p3-4 h2)
        (in-range r8 p4-1 h2)
        (in-range r8 p4-2 h1)
        (in-range r8 p4-2 h2)
        (in-range r8 p4-3 h0)
        (in-range r8 p4-3 h1)
        (in-range r8 p4-3 h2)
        (in-range r8 p4-4 h1)
        (in-range r8 p4-4 h2)
        (in-range r8 p4-5 h2)
        (in-range r8 p5-2 h2)
        (in-range r8 p5-3 h1)
        (in-range r8 p5-3 h2)
        (in-range r8 p5-4 h2)
        (in-range r8 p6-3 h2)
        (in-range r9 p2-5 h2)
        (in-range r9 p3-4 h2)
        (in-range r9 p3-5 h1)
        (in-range r9 p3-5 h2)
        (in-range r9 p3-6 h2)
        (in-range r9 p4-3 h2)
        (in-range r9 p4-4 h1)
        (in-range r9 p4-4 h2)
        (in-range r9 p4-5 h0)
        (in-range r9 p4-5 h1)
        (in-range r9 p4-5 h2)
        (in-range r9 p4-6 h1)
        (in-range r9 p4-6 h2)
        (in-range r9 p4-7 h2)
        (in-range r9 p5-4 h2)
        (in-range r9 p5-5 h1)
        (in-range r9 p5-5 h2)
        (in-range r9 p5-6 h2)
        (in-range r9 p6-5 h2)

        ;; invariants
        (invariant (not (good r0)) (good-rocks-in-range p0-5 h2))
        (invariant (not (good r0)) (good-rocks-in-range p0-6 h1))
        (invariant (not (good r0)) (good-rocks-in-range p0-6 h2))
        (invariant (not (good r0)) (good-rocks-in-range p0-7 h2))
        (invariant (not (good r0)) (good-rocks-in-range p1-4 h2))
        (invariant (not (good r0)) (good-rocks-in-range p1-5 h1))
        (invariant (not (good r0)) (good-rocks-in-range p1-5 h2))
        (invariant (not (good r0)) (good-rocks-in-range p1-6 h0))
        (invariant (not (good r0)) (good-rocks-in-range p1-6 h1))
        (invariant (not (good r0)) (good-rocks-in-range p1-6 h2))
        (invariant (not (good r0)) (good-rocks-in-range p1-7 h1))
        (invariant (not (good r0)) (good-rocks-in-range p1-7 h2))
        (invariant (not (good r0)) (good-rocks-in-range p1-8 h2))
        (invariant (not (good r0)) (good-rocks-in-range p2-5 h2))
        (invariant (not (good r0)) (good-rocks-in-range p2-6 h1))
        (invariant (not (good r0)) (good-rocks-in-range p2-6 h2))
        (invariant (not (good r0)) (good-rocks-in-range p2-7 h2))
        (invariant (not (good r0)) (good-rocks-in-range p3-6 h2))
        (invariant (not (good r1)) (good-rocks-in-range p6-6 h2))
        (invariant (not (good r1)) (good-rocks-in-range p7-5 h2))
        (invariant (not (good r1)) (good-rocks-in-range p7-6 h1))
        (invariant (not (good r1)) (good-rocks-in-range p7-6 h2))
        (invariant (not (good r1)) (good-rocks-in-range p7-7 h2))
        (invariant (not (good r1)) (good-rocks-in-range p8-4 h2))
        (invariant (not (good r1)) (good-rocks-in-range p8-5 h1))
        (invariant (not (good r1)) (good-rocks-in-range p8-5 h2))
        (invariant (not (good r1)) (good-rocks-in-range p8-6 h0))
        (invariant (not (good r1)) (good-rocks-in-range p8-6 h1))
        (invariant (not (good r1)) (good-rocks-in-range p8-6 h2))
        (invariant (not (good r1)) (good-rocks-in-range p8-7 h1))
        (invariant (not (good r1)) (good-rocks-in-range p8-7 h2))
        (invariant (not (good r1)) (good-rocks-in-range p8-8 h2))
        (invariant (not (good r1)) (good-rocks-in-range p9-5 h2))
        (invariant (not (good r1)) (good-rocks-in-range p9-6 h1))
        (invariant (not (good r1)) (good-rocks-in-range p9-6 h2))
        (invariant (not (good r1)) (good-rocks-in-range p9-7 h2))
        (invariant (not (good r2)) (good-rocks-in-range p4-0 h2))
        (invariant (not (good r2)) (good-rocks-in-range p5-0 h1))
        (invariant (not (good r2)) (good-rocks-in-range p5-0 h2))
        (invariant (not (good r2)) (good-rocks-in-range p5-1 h2))
        (invariant (not (good r2)) (good-rocks-in-range p6-0 h0))
        (invariant (not (good r2)) (good-rocks-in-range p6-0 h1))
        (invariant (not (good r2)) (good-rocks-in-range p6-0 h2))
        (invariant (not (good r2)) (good-rocks-in-range p6-1 h1))
        (invariant (not (good r2)) (good-rocks-in-range p6-1 h2))
        (invariant (not (good r2)) (good-rocks-in-range p6-2 h2))
        (invariant (not (good r2)) (good-rocks-in-range p7-0 h1))
        (invariant (not (good r2)) (good-rocks-in-range p7-0 h2))
        (invariant (not (good r2)) (good-rocks-in-range p7-1 h2))
        (invariant (not (good r2)) (good-rocks-in-range p8-0 h2))
        (invariant (not (good r3)) (good-rocks-in-range p0-2 h2))
        (invariant (not (good r3)) (good-rocks-in-range p0-3 h1))
        (invariant (not (good r3)) (good-rocks-in-range p0-3 h2))
        (invariant (not (good r3)) (good-rocks-in-range p0-4 h2))
        (invariant (not (good r3)) (good-rocks-in-range p1-1 h2))
        (invariant (not (good r3)) (good-rocks-in-range p1-2 h1))
        (invariant (not (good r3)) (good-rocks-in-range p1-2 h2))
        (invariant (not (good r3)) (good-rocks-in-range p1-3 h0))
        (invariant (not (good r3)) (good-rocks-in-range p1-3 h1))
        (invariant (not (good r3)) (good-rocks-in-range p1-3 h2))
        (invariant (not (good r3)) (good-rocks-in-range p1-4 h1))
        (invariant (not (good r3)) (good-rocks-in-range p1-4 h2))
        (invariant (not (good r3)) (good-rocks-in-range p1-5 h2))
        (invariant (not (good r3)) (good-rocks-in-range p2-2 h2))
        (invariant (not (good r3)) (good-rocks-in-range p2-3 h1))
        (invariant (not (good r3)) (good-rocks-in-range p2-3 h2))
        (invariant (not (good r3)) (good-rocks-in-range p2-4 h2))
        (invariant (not (good r3)) (good-rocks-in-range p3-3 h2))
        (invariant (not (good r4)) (good-rocks-in-range p1-2 h2))
        (invariant (not (good r4)) (good-rocks-in-range p2-1 h2))
        (invariant (not (good r4)) (good-rocks-in-range p2-2 h1))
        (invariant (not (good r4)) (good-rocks-in-range p2-2 h2))
        (invariant (not (good r4)) (good-rocks-in-range p2-3 h2))
        (invariant (not (good r4)) (good-rocks-in-range p3-0 h2))
        (invariant (not (good r4)) (good-rocks-in-range p3-1 h1))
        (invariant (not (good r4)) (good-rocks-in-range p3-1 h2))
        (invariant (not (good r4)) (good-rocks-in-range p3-2 h0))
        (invariant (not (good r4)) (good-rocks-in-range p3-2 h1))
        (invariant (not (good r4)) (good-rocks-in-range p3-2 h2))
        (invariant (not (good r4)) (good-rocks-in-range p3-3 h1))
        (invariant (not (good r4)) (good-rocks-in-range p3-3 h2))
        (invariant (not (good r4)) (good-rocks-in-range p3-4 h2))
        (invariant (not (good r4)) (good-rocks-in-range p4-1 h2))
        (invariant (not (good r4)) (good-rocks-in-range p4-2 h1))
        (invariant (not (good r4)) (good-rocks-in-range p4-2 h2))
        (invariant (not (good r4)) (good-rocks-in-range p4-3 h2))
        (invariant (not (good r4)) (good-rocks-in-range p5-2 h2))
        (invariant (not (good r5)) (good-rocks-in-range p1-9 h2))
        (invariant (not (good r5)) (good-rocks-in-range p2-8 h2))
        (invariant (not (good r5)) (good-rocks-in-range p2-9 h1))
        (invariant (not (good r5)) (good-rocks-in-range p2-9 h2))
        (invariant (not (good r5)) (good-rocks-in-range p3-7 h2))
        (invariant (not (good r5)) (good-rocks-in-range p3-8 h1))
        (invariant (not (good r5)) (good-rocks-in-range p3-8 h2))
        (invariant (not (good r5)) (good-rocks-in-range p3-9 h0))
        (invariant (not (good r5)) (good-rocks-in-range p3-9 h1))
        (invariant (not (good r5)) (good-rocks-in-range p3-9 h2))
        (invariant (not (good r5)) (good-rocks-in-range p4-8 h2))
        (invariant (not (good r5)) (good-rocks-in-range p4-9 h1))
        (invariant (not (good r5)) (good-rocks-in-range p4-9 h2))
        (invariant (not (good r5)) (good-rocks-in-range p5-9 h2))
        (invariant (not (good r6)) (good-rocks-in-range p5-9 h2))
        (invariant (not (good r6)) (good-rocks-in-range p6-8 h2))
        (invariant (not (good r6)) (good-rocks-in-range p6-9 h1))
        (invariant (not (good r6)) (good-rocks-in-range p6-9 h2))
        (invariant (not (good r6)) (good-rocks-in-range p7-7 h2))
        (invariant (not (good r6)) (good-rocks-in-range p7-8 h1))
        (invariant (not (good r6)) (good-rocks-in-range p7-8 h2))
        (invariant (not (good r6)) (good-rocks-in-range p7-9 h0))
        (invariant (not (good r6)) (good-rocks-in-range p7-9 h1))
        (invariant (not (good r6)) (good-rocks-in-range p7-9 h2))
        (invariant (not (good r6)) (good-rocks-in-range p8-8 h2))
        (invariant (not (good r6)) (good-rocks-in-range p8-9 h1))
        (invariant (not (good r6)) (good-rocks-in-range p8-9 h2))
        (invariant (not (good r6)) (good-rocks-in-range p9-9 h2))
        (invariant (not (good r7)) (good-rocks-in-range p3-9 h2))
        (invariant (not (good r7)) (good-rocks-in-range p4-8 h2))
        (invariant (not (good r7)) (good-rocks-in-range p4-9 h1))
        (invariant (not (good r7)) (good-rocks-in-range p4-9 h2))
        (invariant (not (good r7)) (good-rocks-in-range p5-7 h2))
        (invariant (not (good r7)) (good-rocks-in-range p5-8 h1))
        (invariant (not (good r7)) (good-rocks-in-range p5-8 h2))
        (invariant (not (good r7)) (good-rocks-in-range p5-9 h0))
        (invariant (not (good r7)) (good-rocks-in-range p5-9 h1))
        (invariant (not (good r7)) (good-rocks-in-range p5-9 h2))
        (invariant (not (good r7)) (good-rocks-in-range p6-8 h2))
        (invariant (not (good r7)) (good-rocks-in-range p6-9 h1))
        (invariant (not (good r7)) (good-rocks-in-range p6-9 h2))
        (invariant (not (good r7)) (good-rocks-in-range p7-9 h2))
        (invariant (not (good r8)) (good-rocks-in-range p2-3 h2))
        (invariant (not (good r8)) (good-rocks-in-range p3-2 h2))
        (invariant (not (good r8)) (good-rocks-in-range p3-3 h1))
        (invariant (not (good r8)) (good-rocks-in-range p3-3 h2))
        (invariant (not (good r8)) (good-rocks-in-range p3-4 h2))
        (invariant (not (good r8)) (good-rocks-in-range p4-1 h2))
        (invariant (not (good r8)) (good-rocks-in-range p4-2 h1))
        (invariant (not (good r8)) (good-rocks-in-range p4-2 h2))
        (invariant (not (good r8)) (good-rocks-in-range p4-3 h0))
        (invariant (not (good r8)) (good-rocks-in-range p4-3 h1))
        (invariant (not (good r8)) (good-rocks-in-range p4-3 h2))
        (invariant (not (good r8)) (good-rocks-in-range p4-4 h1))
        (invariant (not (good r8)) (good-rocks-in-range p4-4 h2))
        (invariant (not (good r8)) (good-rocks-in-range p4-5 h2))
        (invariant (not (good r8)) (good-rocks-in-range p5-2 h2))
        (invariant (not (good r8)) (good-rocks-in-range p5-3 h1))
        (invariant (not (good r8)) (good-rocks-in-range p5-3 h2))
        (invariant (not (good r8)) (good-rocks-in-range p5-4 h2))
        (invariant (not (good r8)) (good-rocks-in-range p6-3 h2))
        (invariant (not (good r9)) (good-rocks-in-range p2-5 h2))
        (invariant (not (good r9)) (good-rocks-in-range p3-4 h2))
        (invariant (not (good r9)) (good-rocks-in-range p3-5 h1))
        (invariant (not (good r9)) (good-rocks-in-range p3-5 h2))
        (invariant (not (good r9)) (good-rocks-in-range p3-6 h2))
        (invariant (not (good r9)) (good-rocks-in-range p4-3 h2))
        (invariant (not (good r9)) (good-rocks-in-range p4-4 h1))
        (invariant (not (good r9)) (good-rocks-in-range p4-4 h2))
        (invariant (not (good r9)) (good-rocks-in-range p4-5 h0))
        (invariant (not (good r9)) (good-rocks-in-range p4-5 h1))
        (invariant (not (good r9)) (good-rocks-in-range p4-5 h2))
        (invariant (not (good r9)) (good-rocks-in-range p4-6 h1))
        (invariant (not (good r9)) (good-rocks-in-range p4-6 h2))
        (invariant (not (good r9)) (good-rocks-in-range p4-7 h2))
        (invariant (not (good r9)) (good-rocks-in-range p5-4 h2))
        (invariant (not (good r9)) (good-rocks-in-range p5-5 h1))
        (invariant (not (good r9)) (good-rocks-in-range p5-5 h2))
        (invariant (not (good r9)) (good-rocks-in-range p5-6 h2))
        (invariant (not (good r9)) (good-rocks-in-range p6-5 h2))
        (invariant (not (good-rocks-in-range p0-2 h2)) (good r3))
        (invariant (not (good-rocks-in-range p0-3 h1)) (good r3))
        (invariant (not (good-rocks-in-range p0-3 h2)) (good r3))
        (invariant (not (good-rocks-in-range p0-4 h2)) (good r3))
        (invariant (not (good-rocks-in-range p0-5 h2)) (good r0))
        (invariant (not (good-rocks-in-range p0-6 h1)) (good r0))
        (invariant (not (good-rocks-in-range p0-6 h2)) (good r0))
        (invariant (not (good-rocks-in-range p0-7 h2)) (good r0))
        (invariant (not (good-rocks-in-range p1-1 h2)) (good r3))
        (invariant (not (good-rocks-in-range p1-2 h1)) (good r3))
        (invariant (not (good-rocks-in-range p1-2 h2)) (good r3) (good r4))
        (invariant (not (good-rocks-in-range p1-3 h0)) (good r3))
        (invariant (not (good-rocks-in-range p1-3 h1)) (good r3))
        (invariant (not (good-rocks-in-range p1-3 h2)) (good r3))
        (invariant (not (good-rocks-in-range p1-4 h1)) (good r3))
        (invariant (not (good-rocks-in-range p1-4 h2)) (good r0) (good r3))
        (invariant (not (good-rocks-in-range p1-5 h1)) (good r0))
        (invariant (not (good-rocks-in-range p1-5 h2)) (good r0) (good r3))
        (invariant (not (good-rocks-in-range p1-6 h0)) (good r0))
        (invariant (not (good-rocks-in-range p1-6 h1)) (good r0))
        (invariant (not (good-rocks-in-range p1-6 h2)) (good r0))
        (invariant (not (good-rocks-in-range p1-7 h1)) (good r0))
        (invariant (not (good-rocks-in-range p1-7 h2)) (good r0))
        (invariant (not (good-rocks-in-range p1-8 h2)) (good r0))
        (invariant (not (good-rocks-in-range p1-9 h2)) (good r5))
        (invariant (not (good-rocks-in-range p2-1 h2)) (good r4))
        (invariant (not (good-rocks-in-range p2-2 h1)) (good r4))
        (invariant (not (good-rocks-in-range p2-2 h2)) (good r3) (good r4))
        (invariant (not (good-rocks-in-range p2-3 h1)) (good r3))
        (invariant (not (good-rocks-in-range p2-3 h2)) (good r3) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p2-4 h2)) (good r3))
        (invariant (not (good-rocks-in-range p2-5 h2)) (good r0) (good r9))
        (invariant (not (good-rocks-in-range p2-6 h1)) (good r0))
        (invariant (not (good-rocks-in-range p2-6 h2)) (good r0))
        (invariant (not (good-rocks-in-range p2-7 h2)) (good r0))
        (invariant (not (good-rocks-in-range p2-8 h2)) (good r5))
        (invariant (not (good-rocks-in-range p2-9 h1)) (good r5))
        (invariant (not (good-rocks-in-range p2-9 h2)) (good r5))
        (invariant (not (good-rocks-in-range p3-0 h2)) (good r4))
        (invariant (not (good-rocks-in-range p3-1 h1)) (good r4))
        (invariant (not (good-rocks-in-range p3-1 h2)) (good r4))
        (invariant (not (good-rocks-in-range p3-2 h0)) (good r4))
        (invariant (not (good-rocks-in-range p3-2 h1)) (good r4))
        (invariant (not (good-rocks-in-range p3-2 h2)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p3-3 h1)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p3-3 h2)) (good r3) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p3-4 h2)) (good r4) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p3-5 h1)) (good r9))
        (invariant (not (good-rocks-in-range p3-5 h2)) (good r9))
        (invariant (not (good-rocks-in-range p3-6 h2)) (good r0) (good r9))
        (invariant (not (good-rocks-in-range p3-7 h2)) (good r5))
        (invariant (not (good-rocks-in-range p3-8 h1)) (good r5))
        (invariant (not (good-rocks-in-range p3-8 h2)) (good r5))
        (invariant (not (good-rocks-in-range p3-9 h0)) (good r5))
        (invariant (not (good-rocks-in-range p3-9 h1)) (good r5))
        (invariant (not (good-rocks-in-range p3-9 h2)) (good r5) (good r7))
        (invariant (not (good-rocks-in-range p4-0 h2)) (good r2))
        (invariant (not (good-rocks-in-range p4-1 h2)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p4-2 h1)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p4-2 h2)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p4-3 h0)) (good r8))
        (invariant (not (good-rocks-in-range p4-3 h1)) (good r8))
        (invariant (not (good-rocks-in-range p4-3 h2)) (good r4) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p4-4 h1)) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p4-4 h2)) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p4-5 h0)) (good r9))
        (invariant (not (good-rocks-in-range p4-5 h1)) (good r9))
        (invariant (not (good-rocks-in-range p4-5 h2)) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p4-6 h1)) (good r9))
        (invariant (not (good-rocks-in-range p4-6 h2)) (good r9))
        (invariant (not (good-rocks-in-range p4-7 h2)) (good r9))
        (invariant (not (good-rocks-in-range p4-8 h2)) (good r5) (good r7))
        (invariant (not (good-rocks-in-range p4-9 h1)) (good r5) (good r7))
        (invariant (not (good-rocks-in-range p4-9 h2)) (good r5) (good r7))
        (invariant (not (good-rocks-in-range p5-0 h1)) (good r2))
        (invariant (not (good-rocks-in-range p5-0 h2)) (good r2))
        (invariant (not (good-rocks-in-range p5-1 h2)) (good r2))
        (invariant (not (good-rocks-in-range p5-2 h2)) (good r4) (good r8))
        (invariant (not (good-rocks-in-range p5-3 h1)) (good r8))
        (invariant (not (good-rocks-in-range p5-3 h2)) (good r8))
        (invariant (not (good-rocks-in-range p5-4 h2)) (good r8) (good r9))
        (invariant (not (good-rocks-in-range p5-5 h1)) (good r9))
        (invariant (not (good-rocks-in-range p5-5 h2)) (good r9))
        (invariant (not (good-rocks-in-range p5-6 h2)) (good r9))
        (invariant (not (good-rocks-in-range p5-7 h2)) (good r7))
        (invariant (not (good-rocks-in-range p5-8 h1)) (good r7))
        (invariant (not (good-rocks-in-range p5-8 h2)) (good r7))
        (invariant (not (good-rocks-in-range p5-9 h0)) (good r7))
        (invariant (not (good-rocks-in-range p5-9 h1)) (good r7))
        (invariant (not (good-rocks-in-range p5-9 h2)) (good r5) (good r6) (good r7))
        (invariant (not (good-rocks-in-range p6-0 h0)) (good r2))
        (invariant (not (good-rocks-in-range p6-0 h1)) (good r2))
        (invariant (not (good-rocks-in-range p6-0 h2)) (good r2))
        (invariant (not (good-rocks-in-range p6-1 h1)) (good r2))
        (invariant (not (good-rocks-in-range p6-1 h2)) (good r2))
        (invariant (not (good-rocks-in-range p6-2 h2)) (good r2))
        (invariant (not (good-rocks-in-range p6-3 h2)) (good r8))
        (invariant (not (good-rocks-in-range p6-5 h2)) (good r9))
        (invariant (not (good-rocks-in-range p6-6 h2)) (good r1))
        (invariant (not (good-rocks-in-range p6-8 h2)) (good r6) (good r7))
        (invariant (not (good-rocks-in-range p6-9 h1)) (good r6) (good r7))
        (invariant (not (good-rocks-in-range p6-9 h2)) (good r6) (good r7))
        (invariant (not (good-rocks-in-range p7-0 h1)) (good r2))
        (invariant (not (good-rocks-in-range p7-0 h2)) (good r2))
        (invariant (not (good-rocks-in-range p7-1 h2)) (good r2))
        (invariant (not (good-rocks-in-range p7-5 h2)) (good r1))
        (invariant (not (good-rocks-in-range p7-6 h1)) (good r1))
        (invariant (not (good-rocks-in-range p7-6 h2)) (good r1))
        (invariant (not (good-rocks-in-range p7-7 h2)) (good r1) (good r6))
        (invariant (not (good-rocks-in-range p7-8 h1)) (good r6))
        (invariant (not (good-rocks-in-range p7-8 h2)) (good r6))
        (invariant (not (good-rocks-in-range p7-9 h0)) (good r6))
        (invariant (not (good-rocks-in-range p7-9 h1)) (good r6))
        (invariant (not (good-rocks-in-range p7-9 h2)) (good r6) (good r7))
        (invariant (not (good-rocks-in-range p8-0 h2)) (good r2))
        (invariant (not (good-rocks-in-range p8-4 h2)) (good r1))
        (invariant (not (good-rocks-in-range p8-5 h1)) (good r1))
        (invariant (not (good-rocks-in-range p8-5 h2)) (good r1))
        (invariant (not (good-rocks-in-range p8-6 h0)) (good r1))
        (invariant (not (good-rocks-in-range p8-6 h1)) (good r1))
        (invariant (not (good-rocks-in-range p8-6 h2)) (good r1))
        (invariant (not (good-rocks-in-range p8-7 h1)) (good r1))
        (invariant (not (good-rocks-in-range p8-7 h2)) (good r1))
        (invariant (not (good-rocks-in-range p8-8 h2)) (good r1) (good r6))
        (invariant (not (good-rocks-in-range p8-9 h1)) (good r6))
        (invariant (not (good-rocks-in-range p8-9 h2)) (good r6))
        (invariant (not (good-rocks-in-range p9-5 h2)) (good r1))
        (invariant (not (good-rocks-in-range p9-6 h1)) (good r1))
        (invariant (not (good-rocks-in-range p9-6 h2)) (good r1))
        (invariant (not (good-rocks-in-range p9-7 h2)) (good r1))
        (invariant (not (good-rocks-in-range p9-9 h2)) (good r6))
    )

    (:hidden
        (good r5)
        (good-rocks-in-range p1-9 h2)
        (good-rocks-in-range p2-8 h2)
        (good-rocks-in-range p2-9 h1)
        (good-rocks-in-range p2-9 h2)
        (good-rocks-in-range p3-7 h2)
        (good-rocks-in-range p3-8 h1)
        (good-rocks-in-range p3-8 h2)
        (good-rocks-in-range p3-9 h0)
        (good-rocks-in-range p3-9 h1)
        (good-rocks-in-range p3-9 h2)
        (good-rocks-in-range p4-8 h2)
        (good-rocks-in-range p4-9 h1)
        (good-rocks-in-range p4-9 h2)
        (good-rocks-in-range p5-9 h2)
        (good r8)
        (good-rocks-in-range p2-3 h2)
        (good-rocks-in-range p3-2 h2)
        (good-rocks-in-range p3-3 h1)
        (good-rocks-in-range p3-3 h2)
        (good-rocks-in-range p3-4 h2)
        (good-rocks-in-range p4-1 h2)
        (good-rocks-in-range p4-2 h1)
        (good-rocks-in-range p4-2 h2)
        (good-rocks-in-range p4-3 h0)
        (good-rocks-in-range p4-3 h1)
        (good-rocks-in-range p4-3 h2)
        (good-rocks-in-range p4-4 h1)
        (good-rocks-in-range p4-4 h2)
        (good-rocks-in-range p4-5 h2)
        (good-rocks-in-range p5-2 h2)
        (good-rocks-in-range p5-3 h1)
        (good-rocks-in-range p5-3 h2)
        (good-rocks-in-range p5-4 h2)
        (good-rocks-in-range p6-3 h2)
    )

    (:goal (and (done r0) (done r1) (done r2) (done r3) (done r4) (done r5) (done r6) (done r7) (done r8) (done r9)))
)

