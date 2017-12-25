;; dim=(10,10)
;; init=(4,1)
;; goal=(3,7)
;; ........ww
;; ........@.
;; ...G...@ww
;; ......@...
;; .....@.w..
;; ....@..w..
;; ...@..w...
;; ..@.......
;; .@..I....w
;; .......w.w

(define (problem dia10x10)
    (:domain short-wumpus)
    (:objects p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 - pos)
    (:init
       (adj p0 p1)
       (adj p0 p10)
       (adj p1 p2)
       (adj p1 p0)
       (adj p2 p3)
       (adj p2 p12)
       (adj p2 p1)
       (adj p3 p4)
       (adj p3 p13)
       (adj p3 p2)
       (adj p4 p5)
       (adj p4 p14)
       (adj p4 p3)
       (adj p5 p6)
       (adj p5 p15)
       (adj p5 p4)
       (adj p6 p7)
       (adj p6 p16)
       (adj p6 p5)
       (adj p7 p8)
       (adj p7 p17)
       (adj p7 p6)
       (adj p8 p9)
       (adj p8 p18)
       (adj p8 p7)
       (adj p9 p19)
       (adj p9 p8)
       (adj p10 p20)
       (adj p10 p0)
       (adj p12 p13)
       (adj p12 p2)
       (adj p13 p14)
       (adj p13 p23)
       (adj p13 p12)
       (adj p13 p3)
       (adj p14 p15)
       (adj p14 p24)
       (adj p14 p13)
       (adj p14 p4)
       (adj p15 p16)
       (adj p15 p25)
       (adj p15 p14)
       (adj p15 p5)
       (adj p16 p17)
       (adj p16 p26)
       (adj p16 p15)
       (adj p16 p6)
       (adj p17 p18)
       (adj p17 p27)
       (adj p17 p16)
       (adj p17 p7)
       (adj p18 p19)
       (adj p18 p28)
       (adj p18 p17)
       (adj p18 p8)
       (adj p19 p29)
       (adj p19 p18)
       (adj p19 p9)
       (adj p20 p21)
       (adj p20 p30)
       (adj p20 p10)
       (adj p21 p31)
       (adj p21 p20)
       (adj p23 p24)
       (adj p23 p13)
       (adj p24 p25)
       (adj p24 p34)
       (adj p24 p23)
       (adj p24 p14)
       (adj p25 p26)
       (adj p25 p35)
       (adj p25 p24)
       (adj p25 p15)
       (adj p26 p27)
       (adj p26 p36)
       (adj p26 p25)
       (adj p26 p16)
       (adj p27 p28)
       (adj p27 p37)
       (adj p27 p26)
       (adj p27 p17)
       (adj p28 p29)
       (adj p28 p38)
       (adj p28 p27)
       (adj p28 p18)
       (adj p29 p39)
       (adj p29 p28)
       (adj p29 p19)
       (adj p30 p31)
       (adj p30 p40)
       (adj p30 p20)
       (adj p31 p32)
       (adj p31 p41)
       (adj p31 p30)
       (adj p31 p21)
       (adj p32 p42)
       (adj p32 p31)
       (adj p34 p35)
       (adj p34 p24)
       (adj p35 p36)
       (adj p35 p45)
       (adj p35 p34)
       (adj p35 p25)
       (adj p36 p37)
       (adj p36 p46)
       (adj p36 p35)
       (adj p36 p26)
       (adj p37 p38)
       (adj p37 p47)
       (adj p37 p36)
       (adj p37 p27)
       (adj p38 p39)
       (adj p38 p48)
       (adj p38 p37)
       (adj p38 p28)
       (adj p39 p49)
       (adj p39 p38)
       (adj p39 p29)
       (adj p40 p41)
       (adj p40 p50)
       (adj p40 p30)
       (adj p41 p42)
       (adj p41 p51)
       (adj p41 p40)
       (adj p41 p31)
       (adj p42 p43)
       (adj p42 p52)
       (adj p42 p41)
       (adj p42 p32)
       (adj p43 p53)
       (adj p43 p42)
       (adj p45 p46)
       (adj p45 p35)
       (adj p46 p47)
       (adj p46 p56)
       (adj p46 p45)
       (adj p46 p36)
       (adj p47 p48)
       (adj p47 p57)
       (adj p47 p46)
       (adj p47 p37)
       (adj p48 p49)
       (adj p48 p58)
       (adj p48 p47)
       (adj p48 p38)
       (adj p49 p59)
       (adj p49 p48)
       (adj p49 p39)
       (adj p50 p51)
       (adj p50 p60)
       (adj p50 p40)
       (adj p51 p52)
       (adj p51 p61)
       (adj p51 p50)
       (adj p51 p41)
       (adj p52 p53)
       (adj p52 p62)
       (adj p52 p51)
       (adj p52 p42)
       (adj p53 p54)
       (adj p53 p63)
       (adj p53 p52)
       (adj p53 p43)
       (adj p54 p64)
       (adj p54 p53)
       (adj p56 p57)
       (adj p56 p46)
       (adj p57 p58)
       (adj p57 p67)
       (adj p57 p56)
       (adj p57 p47)
       (adj p58 p59)
       (adj p58 p68)
       (adj p58 p57)
       (adj p58 p48)
       (adj p59 p69)
       (adj p59 p58)
       (adj p59 p49)
       (adj p60 p61)
       (adj p60 p70)
       (adj p60 p50)
       (adj p61 p62)
       (adj p61 p71)
       (adj p61 p60)
       (adj p61 p51)
       (adj p62 p63)
       (adj p62 p72)
       (adj p62 p61)
       (adj p62 p52)
       (adj p63 p64)
       (adj p63 p73)
       (adj p63 p62)
       (adj p63 p53)
       (adj p64 p65)
       (adj p64 p74)
       (adj p64 p63)
       (adj p64 p54)
       (adj p65 p75)
       (adj p65 p64)
       (adj p67 p68)
       (adj p67 p57)
       (adj p68 p69)
       (adj p68 p78)
       (adj p68 p67)
       (adj p68 p58)
       (adj p69 p79)
       (adj p69 p68)
       (adj p69 p59)
       (adj p70 p71)
       (adj p70 p80)
       (adj p70 p60)
       (adj p71 p72)
       (adj p71 p81)
       (adj p71 p70)
       (adj p71 p61)
       (adj p72 p73)
       (adj p72 p82)
       (adj p72 p71)
       (adj p72 p62)
       (adj p73 p74)
       (adj p73 p83)
       (adj p73 p72)
       (adj p73 p63)
       (adj p74 p75)
       (adj p74 p84)
       (adj p74 p73)
       (adj p74 p64)
       (adj p75 p76)
       (adj p75 p85)
       (adj p75 p74)
       (adj p75 p65)
       (adj p76 p86)
       (adj p76 p75)
       (adj p78 p79)
       (adj p78 p68)
       (adj p79 p89)
       (adj p79 p78)
       (adj p79 p69)
       (adj p80 p81)
       (adj p80 p90)
       (adj p80 p70)
       (adj p81 p82)
       (adj p81 p91)
       (adj p81 p80)
       (adj p81 p71)
       (adj p82 p83)
       (adj p82 p92)
       (adj p82 p81)
       (adj p82 p72)
       (adj p83 p84)
       (adj p83 p93)
       (adj p83 p82)
       (adj p83 p73)
       (adj p84 p85)
       (adj p84 p94)
       (adj p84 p83)
       (adj p84 p74)
       (adj p85 p86)
       (adj p85 p95)
       (adj p85 p84)
       (adj p85 p75)
       (adj p86 p87)
       (adj p86 p96)
       (adj p86 p85)
       (adj p86 p76)
       (adj p87 p97)
       (adj p87 p86)
       (adj p89 p99)
       (adj p89 p79)
       (adj p90 p91)
       (adj p90 p80)
       (adj p91 p92)
       (adj p91 p90)
       (adj p91 p81)
       (adj p92 p93)
       (adj p92 p91)
       (adj p92 p82)
       (adj p93 p94)
       (adj p93 p92)
       (adj p93 p83)
       (adj p94 p95)
       (adj p94 p93)
       (adj p94 p84)
       (adj p95 p96)
       (adj p95 p94)
       (adj p95 p85)
       (adj p96 p97)
       (adj p96 p95)
       (adj p96 p86)
       (adj p97 p98)
       (adj p97 p96)
       (adj p97 p87)
       (adj p98 p99)
       (adj p98 p97)
       (adj p99 p98)
       (adj p99 p89)

       (at p41)

       ; Invariants: (or wumpus(p) -wumpus(p))
       (invariant (wumpus p0) (not (wumpus p0)))
       (invariant (wumpus p1) (not (wumpus p1)))
       (invariant (wumpus p2) (not (wumpus p2)))
       (invariant (wumpus p3) (not (wumpus p3)))
       (invariant (wumpus p4) (not (wumpus p4)))
       (invariant (wumpus p5) (not (wumpus p5)))
       (invariant (wumpus p6) (not (wumpus p6)))
       (invariant (wumpus p7) (not (wumpus p7)))
       (invariant (wumpus p8) (not (wumpus p8)))
       (invariant (wumpus p9) (not (wumpus p9)))
       (invariant (wumpus p10) (not (wumpus p10)))
       (invariant (wumpus p12) (not (wumpus p12)))
       (invariant (wumpus p13) (not (wumpus p13)))
       (invariant (wumpus p14) (not (wumpus p14)))
       (invariant (wumpus p15) (not (wumpus p15)))
       (invariant (wumpus p16) (not (wumpus p16)))
       (invariant (wumpus p17) (not (wumpus p17)))
       (invariant (wumpus p18) (not (wumpus p18)))
       (invariant (wumpus p19) (not (wumpus p19)))
       (invariant (wumpus p20) (not (wumpus p20)))
       (invariant (wumpus p21) (not (wumpus p21)))
       (invariant (wumpus p23) (not (wumpus p23)))
       (invariant (wumpus p24) (not (wumpus p24)))
       (invariant (wumpus p25) (not (wumpus p25)))
       (invariant (wumpus p26) (not (wumpus p26)))
       (invariant (wumpus p27) (not (wumpus p27)))
       (invariant (wumpus p28) (not (wumpus p28)))
       (invariant (wumpus p29) (not (wumpus p29)))
       (invariant (wumpus p30) (not (wumpus p30)))
       (invariant (wumpus p31) (not (wumpus p31)))
       (invariant (wumpus p32) (not (wumpus p32)))
       (invariant (wumpus p34) (not (wumpus p34)))
       (invariant (wumpus p35) (not (wumpus p35)))
       (invariant (wumpus p36) (not (wumpus p36)))
       (invariant (wumpus p37) (not (wumpus p37)))
       (invariant (wumpus p38) (not (wumpus p38)))
       (invariant (wumpus p39) (not (wumpus p39)))
       (invariant (wumpus p40) (not (wumpus p40)))
       (invariant (wumpus p42) (not (wumpus p42)))
       (invariant (wumpus p43) (not (wumpus p43)))
       (invariant (wumpus p45) (not (wumpus p45)))
       (invariant (wumpus p46) (not (wumpus p46)))
       (invariant (wumpus p47) (not (wumpus p47)))
       (invariant (wumpus p48) (not (wumpus p48)))
       (invariant (wumpus p49) (not (wumpus p49)))
       (invariant (wumpus p50) (not (wumpus p50)))
       (invariant (wumpus p51) (not (wumpus p51)))
       (invariant (wumpus p52) (not (wumpus p52)))
       (invariant (wumpus p53) (not (wumpus p53)))
       (invariant (wumpus p54) (not (wumpus p54)))
       (invariant (wumpus p56) (not (wumpus p56)))
       (invariant (wumpus p57) (not (wumpus p57)))
       (invariant (wumpus p58) (not (wumpus p58)))
       (invariant (wumpus p59) (not (wumpus p59)))
       (invariant (wumpus p60) (not (wumpus p60)))
       (invariant (wumpus p61) (not (wumpus p61)))
       (invariant (wumpus p62) (not (wumpus p62)))
       (invariant (wumpus p63) (not (wumpus p63)))
       (invariant (wumpus p64) (not (wumpus p64)))
       (invariant (wumpus p65) (not (wumpus p65)))
       (invariant (wumpus p67) (not (wumpus p67)))
       (invariant (wumpus p68) (not (wumpus p68)))
       (invariant (wumpus p69) (not (wumpus p69)))
       (invariant (wumpus p70) (not (wumpus p70)))
       (invariant (wumpus p71) (not (wumpus p71)))
       (invariant (wumpus p72) (not (wumpus p72)))
       (invariant (wumpus p73) (not (wumpus p73)))
       (invariant (wumpus p74) (not (wumpus p74)))
       (invariant (wumpus p75) (not (wumpus p75)))
       (invariant (wumpus p76) (not (wumpus p76)))
       (invariant (wumpus p78) (not (wumpus p78)))
       (invariant (wumpus p79) (not (wumpus p79)))
       (invariant (wumpus p80) (not (wumpus p80)))
       (invariant (wumpus p81) (not (wumpus p81)))
       (invariant (wumpus p82) (not (wumpus p82)))
       (invariant (wumpus p83) (not (wumpus p83)))
       (invariant (wumpus p84) (not (wumpus p84)))
       (invariant (wumpus p85) (not (wumpus p85)))
       (invariant (wumpus p86) (not (wumpus p86)))
       (invariant (wumpus p87) (not (wumpus p87)))
       (invariant (wumpus p89) (not (wumpus p89)))
       (invariant (wumpus p90) (not (wumpus p90)))
       (invariant (wumpus p91) (not (wumpus p91)))
       (invariant (wumpus p92) (not (wumpus p92)))
       (invariant (wumpus p93) (not (wumpus p93)))
       (invariant (wumpus p94) (not (wumpus p94)))
       (invariant (wumpus p95) (not (wumpus p95)))
       (invariant (wumpus p96) (not (wumpus p96)))
       (invariant (wumpus p97) (not (wumpus p97)))
       (invariant (wumpus p98) (not (wumpus p98)))
       (invariant (wumpus p99) (not (wumpus p99)))

       ; Invariants: (or stench(p) -stench(p))
       (invariant (stench p0) (not (stench p0)))
       (invariant (stench p1) (not (stench p1)))
       (invariant (stench p2) (not (stench p2)))
       (invariant (stench p3) (not (stench p3)))
       (invariant (stench p4) (not (stench p4)))
       (invariant (stench p5) (not (stench p5)))
       (invariant (stench p6) (not (stench p6)))
       (invariant (stench p7) (not (stench p7)))
       (invariant (stench p8) (not (stench p8)))
       (invariant (stench p9) (not (stench p9)))
       (invariant (stench p10) (not (stench p10)))
       (invariant (stench p12) (not (stench p12)))
       (invariant (stench p13) (not (stench p13)))
       (invariant (stench p14) (not (stench p14)))
       (invariant (stench p15) (not (stench p15)))
       (invariant (stench p16) (not (stench p16)))
       (invariant (stench p17) (not (stench p17)))
       (invariant (stench p18) (not (stench p18)))
       (invariant (stench p19) (not (stench p19)))
       (invariant (stench p20) (not (stench p20)))
       (invariant (stench p21) (not (stench p21)))
       (invariant (stench p23) (not (stench p23)))
       (invariant (stench p24) (not (stench p24)))
       (invariant (stench p25) (not (stench p25)))
       (invariant (stench p26) (not (stench p26)))
       (invariant (stench p27) (not (stench p27)))
       (invariant (stench p28) (not (stench p28)))
       (invariant (stench p29) (not (stench p29)))
       (invariant (stench p30) (not (stench p30)))
       (invariant (stench p31) (not (stench p31)))
       (invariant (stench p32) (not (stench p32)))
       (invariant (stench p34) (not (stench p34)))
       (invariant (stench p35) (not (stench p35)))
       (invariant (stench p36) (not (stench p36)))
       (invariant (stench p37) (not (stench p37)))
       (invariant (stench p38) (not (stench p38)))
       (invariant (stench p39) (not (stench p39)))
       (invariant (stench p40) (not (stench p40)))
       (invariant (stench p41) (not (stench p41)))
       (invariant (stench p42) (not (stench p42)))
       (invariant (stench p43) (not (stench p43)))
       (invariant (stench p45) (not (stench p45)))
       (invariant (stench p46) (not (stench p46)))
       (invariant (stench p47) (not (stench p47)))
       (invariant (stench p48) (not (stench p48)))
       (invariant (stench p49) (not (stench p49)))
       (invariant (stench p50) (not (stench p50)))
       (invariant (stench p51) (not (stench p51)))
       (invariant (stench p52) (not (stench p52)))
       (invariant (stench p53) (not (stench p53)))
       (invariant (stench p54) (not (stench p54)))
       (invariant (stench p56) (not (stench p56)))
       (invariant (stench p57) (not (stench p57)))
       (invariant (stench p58) (not (stench p58)))
       (invariant (stench p59) (not (stench p59)))
       (invariant (stench p60) (not (stench p60)))
       (invariant (stench p61) (not (stench p61)))
       (invariant (stench p62) (not (stench p62)))
       (invariant (stench p63) (not (stench p63)))
       (invariant (stench p64) (not (stench p64)))
       (invariant (stench p65) (not (stench p65)))
       (invariant (stench p67) (not (stench p67)))
       (invariant (stench p68) (not (stench p68)))
       (invariant (stench p69) (not (stench p69)))
       (invariant (stench p70) (not (stench p70)))
       (invariant (stench p71) (not (stench p71)))
       (invariant (stench p72) (not (stench p72)))
       (invariant (stench p73) (not (stench p73)))
       (invariant (stench p74) (not (stench p74)))
       (invariant (stench p75) (not (stench p75)))
       (invariant (stench p76) (not (stench p76)))
       (invariant (stench p78) (not (stench p78)))
       (invariant (stench p79) (not (stench p79)))
       (invariant (stench p80) (not (stench p80)))
       (invariant (stench p81) (not (stench p81)))
       (invariant (stench p82) (not (stench p82)))
       (invariant (stench p83) (not (stench p83)))
       (invariant (stench p84) (not (stench p84)))
       (invariant (stench p85) (not (stench p85)))
       (invariant (stench p86) (not (stench p86)))
       (invariant (stench p87) (not (stench p87)))
       (invariant (stench p89) (not (stench p89)))
       (invariant (stench p90) (not (stench p90)))
       (invariant (stench p91) (not (stench p91)))
       (invariant (stench p92) (not (stench p92)))
       (invariant (stench p93) (not (stench p93)))
       (invariant (stench p94) (not (stench p94)))
       (invariant (stench p95) (not (stench p95)))
       (invariant (stench p96) (not (stench p96)))
       (invariant (stench p97) (not (stench p97)))
       (invariant (stench p98) (not (stench p98)))
       (invariant (stench p99) (not (stench p99)))

       ; Invariants: (or stench(p) -wumpus(p'))
       (invariant (stench p0) (not (wumpus p1)))
       (invariant (stench p0) (not (wumpus p10)))
       (invariant (stench p1) (not (wumpus p2)))
       (invariant (stench p1) (not (wumpus p0)))
       (invariant (stench p2) (not (wumpus p3)))
       (invariant (stench p2) (not (wumpus p12)))
       (invariant (stench p2) (not (wumpus p1)))
       (invariant (stench p3) (not (wumpus p4)))
       (invariant (stench p3) (not (wumpus p13)))
       (invariant (stench p3) (not (wumpus p2)))
       (invariant (stench p4) (not (wumpus p5)))
       (invariant (stench p4) (not (wumpus p14)))
       (invariant (stench p4) (not (wumpus p3)))
       (invariant (stench p5) (not (wumpus p6)))
       (invariant (stench p5) (not (wumpus p15)))
       (invariant (stench p5) (not (wumpus p4)))
       (invariant (stench p6) (not (wumpus p7)))
       (invariant (stench p6) (not (wumpus p16)))
       (invariant (stench p6) (not (wumpus p5)))
       (invariant (stench p7) (not (wumpus p8)))
       (invariant (stench p7) (not (wumpus p17)))
       (invariant (stench p7) (not (wumpus p6)))
       (invariant (stench p8) (not (wumpus p9)))
       (invariant (stench p8) (not (wumpus p18)))
       (invariant (stench p8) (not (wumpus p7)))
       (invariant (stench p9) (not (wumpus p19)))
       (invariant (stench p9) (not (wumpus p8)))
       (invariant (stench p10) (not (wumpus p20)))
       (invariant (stench p10) (not (wumpus p0)))
       (invariant (stench p12) (not (wumpus p13)))
       (invariant (stench p12) (not (wumpus p2)))
       (invariant (stench p13) (not (wumpus p14)))
       (invariant (stench p13) (not (wumpus p23)))
       (invariant (stench p13) (not (wumpus p12)))
       (invariant (stench p13) (not (wumpus p3)))
       (invariant (stench p14) (not (wumpus p15)))
       (invariant (stench p14) (not (wumpus p24)))
       (invariant (stench p14) (not (wumpus p13)))
       (invariant (stench p14) (not (wumpus p4)))
       (invariant (stench p15) (not (wumpus p16)))
       (invariant (stench p15) (not (wumpus p25)))
       (invariant (stench p15) (not (wumpus p14)))
       (invariant (stench p15) (not (wumpus p5)))
       (invariant (stench p16) (not (wumpus p17)))
       (invariant (stench p16) (not (wumpus p26)))
       (invariant (stench p16) (not (wumpus p15)))
       (invariant (stench p16) (not (wumpus p6)))
       (invariant (stench p17) (not (wumpus p18)))
       (invariant (stench p17) (not (wumpus p27)))
       (invariant (stench p17) (not (wumpus p16)))
       (invariant (stench p17) (not (wumpus p7)))
       (invariant (stench p18) (not (wumpus p19)))
       (invariant (stench p18) (not (wumpus p28)))
       (invariant (stench p18) (not (wumpus p17)))
       (invariant (stench p18) (not (wumpus p8)))
       (invariant (stench p19) (not (wumpus p29)))
       (invariant (stench p19) (not (wumpus p18)))
       (invariant (stench p19) (not (wumpus p9)))
       (invariant (stench p20) (not (wumpus p21)))
       (invariant (stench p20) (not (wumpus p30)))
       (invariant (stench p20) (not (wumpus p10)))
       (invariant (stench p21) (not (wumpus p31)))
       (invariant (stench p21) (not (wumpus p20)))
       (invariant (stench p23) (not (wumpus p24)))
       (invariant (stench p23) (not (wumpus p13)))
       (invariant (stench p24) (not (wumpus p25)))
       (invariant (stench p24) (not (wumpus p34)))
       (invariant (stench p24) (not (wumpus p23)))
       (invariant (stench p24) (not (wumpus p14)))
       (invariant (stench p25) (not (wumpus p26)))
       (invariant (stench p25) (not (wumpus p35)))
       (invariant (stench p25) (not (wumpus p24)))
       (invariant (stench p25) (not (wumpus p15)))
       (invariant (stench p26) (not (wumpus p27)))
       (invariant (stench p26) (not (wumpus p36)))
       (invariant (stench p26) (not (wumpus p25)))
       (invariant (stench p26) (not (wumpus p16)))
       (invariant (stench p27) (not (wumpus p28)))
       (invariant (stench p27) (not (wumpus p37)))
       (invariant (stench p27) (not (wumpus p26)))
       (invariant (stench p27) (not (wumpus p17)))
       (invariant (stench p28) (not (wumpus p29)))
       (invariant (stench p28) (not (wumpus p38)))
       (invariant (stench p28) (not (wumpus p27)))
       (invariant (stench p28) (not (wumpus p18)))
       (invariant (stench p29) (not (wumpus p39)))
       (invariant (stench p29) (not (wumpus p28)))
       (invariant (stench p29) (not (wumpus p19)))
       (invariant (stench p30) (not (wumpus p31)))
       (invariant (stench p30) (not (wumpus p40)))
       (invariant (stench p30) (not (wumpus p20)))
       (invariant (stench p31) (not (wumpus p32)))
       (invariant (stench p31) (not (wumpus p41)))
       (invariant (stench p31) (not (wumpus p30)))
       (invariant (stench p31) (not (wumpus p21)))
       (invariant (stench p32) (not (wumpus p42)))
       (invariant (stench p32) (not (wumpus p31)))
       (invariant (stench p34) (not (wumpus p35)))
       (invariant (stench p34) (not (wumpus p24)))
       (invariant (stench p35) (not (wumpus p36)))
       (invariant (stench p35) (not (wumpus p45)))
       (invariant (stench p35) (not (wumpus p34)))
       (invariant (stench p35) (not (wumpus p25)))
       (invariant (stench p36) (not (wumpus p37)))
       (invariant (stench p36) (not (wumpus p46)))
       (invariant (stench p36) (not (wumpus p35)))
       (invariant (stench p36) (not (wumpus p26)))
       (invariant (stench p37) (not (wumpus p38)))
       (invariant (stench p37) (not (wumpus p47)))
       (invariant (stench p37) (not (wumpus p36)))
       (invariant (stench p37) (not (wumpus p27)))
       (invariant (stench p38) (not (wumpus p39)))
       (invariant (stench p38) (not (wumpus p48)))
       (invariant (stench p38) (not (wumpus p37)))
       (invariant (stench p38) (not (wumpus p28)))
       (invariant (stench p39) (not (wumpus p49)))
       (invariant (stench p39) (not (wumpus p38)))
       (invariant (stench p39) (not (wumpus p29)))
       (invariant (stench p40) (not (wumpus p41)))
       (invariant (stench p40) (not (wumpus p50)))
       (invariant (stench p40) (not (wumpus p30)))
       (invariant (stench p41) (not (wumpus p42)))
       (invariant (stench p41) (not (wumpus p51)))
       (invariant (stench p41) (not (wumpus p40)))
       (invariant (stench p41) (not (wumpus p31)))
       (invariant (stench p42) (not (wumpus p43)))
       (invariant (stench p42) (not (wumpus p52)))
       (invariant (stench p42) (not (wumpus p41)))
       (invariant (stench p42) (not (wumpus p32)))
       (invariant (stench p43) (not (wumpus p53)))
       (invariant (stench p43) (not (wumpus p42)))
       (invariant (stench p45) (not (wumpus p46)))
       (invariant (stench p45) (not (wumpus p35)))
       (invariant (stench p46) (not (wumpus p47)))
       (invariant (stench p46) (not (wumpus p56)))
       (invariant (stench p46) (not (wumpus p45)))
       (invariant (stench p46) (not (wumpus p36)))
       (invariant (stench p47) (not (wumpus p48)))
       (invariant (stench p47) (not (wumpus p57)))
       (invariant (stench p47) (not (wumpus p46)))
       (invariant (stench p47) (not (wumpus p37)))
       (invariant (stench p48) (not (wumpus p49)))
       (invariant (stench p48) (not (wumpus p58)))
       (invariant (stench p48) (not (wumpus p47)))
       (invariant (stench p48) (not (wumpus p38)))
       (invariant (stench p49) (not (wumpus p59)))
       (invariant (stench p49) (not (wumpus p48)))
       (invariant (stench p49) (not (wumpus p39)))
       (invariant (stench p50) (not (wumpus p51)))
       (invariant (stench p50) (not (wumpus p60)))
       (invariant (stench p50) (not (wumpus p40)))
       (invariant (stench p51) (not (wumpus p52)))
       (invariant (stench p51) (not (wumpus p61)))
       (invariant (stench p51) (not (wumpus p50)))
       (invariant (stench p51) (not (wumpus p41)))
       (invariant (stench p52) (not (wumpus p53)))
       (invariant (stench p52) (not (wumpus p62)))
       (invariant (stench p52) (not (wumpus p51)))
       (invariant (stench p52) (not (wumpus p42)))
       (invariant (stench p53) (not (wumpus p54)))
       (invariant (stench p53) (not (wumpus p63)))
       (invariant (stench p53) (not (wumpus p52)))
       (invariant (stench p53) (not (wumpus p43)))
       (invariant (stench p54) (not (wumpus p64)))
       (invariant (stench p54) (not (wumpus p53)))
       (invariant (stench p56) (not (wumpus p57)))
       (invariant (stench p56) (not (wumpus p46)))
       (invariant (stench p57) (not (wumpus p58)))
       (invariant (stench p57) (not (wumpus p67)))
       (invariant (stench p57) (not (wumpus p56)))
       (invariant (stench p57) (not (wumpus p47)))
       (invariant (stench p58) (not (wumpus p59)))
       (invariant (stench p58) (not (wumpus p68)))
       (invariant (stench p58) (not (wumpus p57)))
       (invariant (stench p58) (not (wumpus p48)))
       (invariant (stench p59) (not (wumpus p69)))
       (invariant (stench p59) (not (wumpus p58)))
       (invariant (stench p59) (not (wumpus p49)))
       (invariant (stench p60) (not (wumpus p61)))
       (invariant (stench p60) (not (wumpus p70)))
       (invariant (stench p60) (not (wumpus p50)))
       (invariant (stench p61) (not (wumpus p62)))
       (invariant (stench p61) (not (wumpus p71)))
       (invariant (stench p61) (not (wumpus p60)))
       (invariant (stench p61) (not (wumpus p51)))
       (invariant (stench p62) (not (wumpus p63)))
       (invariant (stench p62) (not (wumpus p72)))
       (invariant (stench p62) (not (wumpus p61)))
       (invariant (stench p62) (not (wumpus p52)))
       (invariant (stench p63) (not (wumpus p64)))
       (invariant (stench p63) (not (wumpus p73)))
       (invariant (stench p63) (not (wumpus p62)))
       (invariant (stench p63) (not (wumpus p53)))
       (invariant (stench p64) (not (wumpus p65)))
       (invariant (stench p64) (not (wumpus p74)))
       (invariant (stench p64) (not (wumpus p63)))
       (invariant (stench p64) (not (wumpus p54)))
       (invariant (stench p65) (not (wumpus p75)))
       (invariant (stench p65) (not (wumpus p64)))
       (invariant (stench p67) (not (wumpus p68)))
       (invariant (stench p67) (not (wumpus p57)))
       (invariant (stench p68) (not (wumpus p69)))
       (invariant (stench p68) (not (wumpus p78)))
       (invariant (stench p68) (not (wumpus p67)))
       (invariant (stench p68) (not (wumpus p58)))
       (invariant (stench p69) (not (wumpus p79)))
       (invariant (stench p69) (not (wumpus p68)))
       (invariant (stench p69) (not (wumpus p59)))
       (invariant (stench p70) (not (wumpus p71)))
       (invariant (stench p70) (not (wumpus p80)))
       (invariant (stench p70) (not (wumpus p60)))
       (invariant (stench p71) (not (wumpus p72)))
       (invariant (stench p71) (not (wumpus p81)))
       (invariant (stench p71) (not (wumpus p70)))
       (invariant (stench p71) (not (wumpus p61)))
       (invariant (stench p72) (not (wumpus p73)))
       (invariant (stench p72) (not (wumpus p82)))
       (invariant (stench p72) (not (wumpus p71)))
       (invariant (stench p72) (not (wumpus p62)))
       (invariant (stench p73) (not (wumpus p74)))
       (invariant (stench p73) (not (wumpus p83)))
       (invariant (stench p73) (not (wumpus p72)))
       (invariant (stench p73) (not (wumpus p63)))
       (invariant (stench p74) (not (wumpus p75)))
       (invariant (stench p74) (not (wumpus p84)))
       (invariant (stench p74) (not (wumpus p73)))
       (invariant (stench p74) (not (wumpus p64)))
       (invariant (stench p75) (not (wumpus p76)))
       (invariant (stench p75) (not (wumpus p85)))
       (invariant (stench p75) (not (wumpus p74)))
       (invariant (stench p75) (not (wumpus p65)))
       (invariant (stench p76) (not (wumpus p86)))
       (invariant (stench p76) (not (wumpus p75)))
       (invariant (stench p78) (not (wumpus p79)))
       (invariant (stench p78) (not (wumpus p68)))
       (invariant (stench p79) (not (wumpus p89)))
       (invariant (stench p79) (not (wumpus p78)))
       (invariant (stench p79) (not (wumpus p69)))
       (invariant (stench p80) (not (wumpus p81)))
       (invariant (stench p80) (not (wumpus p90)))
       (invariant (stench p80) (not (wumpus p70)))
       (invariant (stench p81) (not (wumpus p82)))
       (invariant (stench p81) (not (wumpus p91)))
       (invariant (stench p81) (not (wumpus p80)))
       (invariant (stench p81) (not (wumpus p71)))
       (invariant (stench p82) (not (wumpus p83)))
       (invariant (stench p82) (not (wumpus p92)))
       (invariant (stench p82) (not (wumpus p81)))
       (invariant (stench p82) (not (wumpus p72)))
       (invariant (stench p83) (not (wumpus p84)))
       (invariant (stench p83) (not (wumpus p93)))
       (invariant (stench p83) (not (wumpus p82)))
       (invariant (stench p83) (not (wumpus p73)))
       (invariant (stench p84) (not (wumpus p85)))
       (invariant (stench p84) (not (wumpus p94)))
       (invariant (stench p84) (not (wumpus p83)))
       (invariant (stench p84) (not (wumpus p74)))
       (invariant (stench p85) (not (wumpus p86)))
       (invariant (stench p85) (not (wumpus p95)))
       (invariant (stench p85) (not (wumpus p84)))
       (invariant (stench p85) (not (wumpus p75)))
       (invariant (stench p86) (not (wumpus p87)))
       (invariant (stench p86) (not (wumpus p96)))
       (invariant (stench p86) (not (wumpus p85)))
       (invariant (stench p86) (not (wumpus p76)))
       (invariant (stench p87) (not (wumpus p97)))
       (invariant (stench p87) (not (wumpus p86)))
       (invariant (stench p89) (not (wumpus p99)))
       (invariant (stench p89) (not (wumpus p79)))
       (invariant (stench p90) (not (wumpus p91)))
       (invariant (stench p90) (not (wumpus p80)))
       (invariant (stench p91) (not (wumpus p92)))
       (invariant (stench p91) (not (wumpus p90)))
       (invariant (stench p91) (not (wumpus p81)))
       (invariant (stench p92) (not (wumpus p93)))
       (invariant (stench p92) (not (wumpus p91)))
       (invariant (stench p92) (not (wumpus p82)))
       (invariant (stench p93) (not (wumpus p94)))
       (invariant (stench p93) (not (wumpus p92)))
       (invariant (stench p93) (not (wumpus p83)))
       (invariant (stench p94) (not (wumpus p95)))
       (invariant (stench p94) (not (wumpus p93)))
       (invariant (stench p94) (not (wumpus p84)))
       (invariant (stench p95) (not (wumpus p96)))
       (invariant (stench p95) (not (wumpus p94)))
       (invariant (stench p95) (not (wumpus p85)))
       (invariant (stench p96) (not (wumpus p97)))
       (invariant (stench p96) (not (wumpus p95)))
       (invariant (stench p96) (not (wumpus p86)))
       (invariant (stench p97) (not (wumpus p98)))
       (invariant (stench p97) (not (wumpus p96)))
       (invariant (stench p97) (not (wumpus p87)))
       (invariant (stench p98) (not (wumpus p99)))
       (invariant (stench p98) (not (wumpus p97)))
       (invariant (stench p99) (not (wumpus p98)))
       (invariant (stench p99) (not (wumpus p89)))
    )
    (:hidden
       (wumpus p63) (stench p64) (stench p73) (stench p62) (stench p53)
       (wumpus p70) (stench p71) (stench p80) (stench p60)
       (wumpus p74) (stench p75) (stench p84) (stench p73) (stench p64)
       (wumpus p75) (stench p76) (stench p85) (stench p74) (stench p65)
       (wumpus p87) (stench p97) (stench p86)
       (wumpus p89) (stench p99) (stench p79)
       (wumpus p90) (stench p91) (stench p80)
       (wumpus p91) (stench p92) (stench p90) (stench p81)
       (wumpus p97) (stench p98) (stench p96) (stench p87)
       (wumpus p99) (stench p98) (stench p89)
    )
    (:goal (at p37))
)
