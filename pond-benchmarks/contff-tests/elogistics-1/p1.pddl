(define (problem hard_1pk_2cty)   
(:domain logistics_conf)
  (:objects 	package1 - OBJ
		pgh_truck - TRUCK
		bos_truck - TRUCK
		airplane1 - AIRPLANE
		bos_po - LOCATION
		pgh_po - LOCATION
		bos_airport - AIRPORT 
		pgh_airport - AIRPORT 
		pgh - CITY
		bos - CITY
	)
 (:init ;(and

        (unknown (at_ol package1 pgh_po))
        (unknown (at_ol package1 bos_po))

	(oneof
	   (at_ol package1 pgh_po)
	 ;(at package1 pgh-airport)
	 (at_ol package1 bos_po)
	 ;(at package1 bos-airport)
	 )

 	 (at_aa airplane1 pgh_airport)

	 (at_tl bos_truck bos_po)

	 (at_tl pgh_truck pgh_po)
 
	 (in_city_l bos_po bos)
	 (in_city_a bos_airport bos)
	 (in_city_l pgh_po pgh)
	 (in_city_a pgh_airport pgh)
	 (in_city_t pgh_truck pgh)
	 (in_city_t bos_truck bos)
)
;)
  (:goal ;conformantgoal 
	(at_oa package1 bos_airport)	
  )
)
