;; feature-code

(draw-program "Feature Image" 
	      (lambda ()
		(let ((r (random-between-integer 1 4))
		      (phone? (ui:running-in-iphone?)))
		  (case r
		    ((1) (draw-lsys-graph '(f)
					  '((f f [ + + f [ f f ] + f ] f [ - f - f ] f [ - - f [ + f ] - f f ] f [ + f ])) 
					  (if phone? 10 7)  ;; length
					  22  ;; angle
					  (if phone? 2 3)))   ;; level
		    ((2) (draw-dragon-curve (if phone? 6 12) ;; length
					    (if phone? 10 10))) ;; level
		    ((3) (draw-polygon-spiral (if phone? 6 15) ;; length
					      (random-between-integer 3 5) ;; sides
					      (random-between-integer 5 35) ;; angle
					      (random-between-integer 2 3) ;; side increase per iteration
					      (random-between-integer 50 75))) ;; iterations
		    ((4) (draw-koch-curve (random-from-list '(1 2 3 4 5))  ;; koch curve type
					  (random-from-list '(3 5 8 12 20)) ;; length
					  (random-between-integer 2 3))) ;; level
		    ))))
