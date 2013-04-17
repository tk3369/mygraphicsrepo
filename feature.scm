;; feature-code

(draw-program "Feature Image" 
	      (lambda ()
		(let ((r      (random-between-integer 1 6))
		      (phone? (ui:running-in-iphone?)))

		  (log-info "Drawing feature image #" r)

		  (case r

		    ;; custom tree
		    ((1) (draw-lsys-graph '(f)
					  '((f f [ + + f [ f f ] + f ] f [ - f - f ] f [ - - f [ + f ] - f f ] f [ + f ])) 
					  (if phone? 10 7)    ;; length
					  22                  ;; angle
					  (if phone? 2 3)))   ;; level

		    ;; dragon curve - page 11 
		    ((2) (draw-dragon-curve (if phone? 6 12)  ;; length
					    10))              ;; level

		    ;; custom pattern - spiral staircase
		    ((3) (draw-polygon-spiral (if phone? 6 100) ;; length
					      3      ;; sides
					      8      ;; angle
					      2      ;; side increase per iteration
					      70))

		    ;; hexagonal Gosper curve - page 12
		    ((4) (draw-lsys-graph '(fl)
					  '((fl fl + fr + + fr - fl - - fl fl - fr +) (fr - fl + fr fr + + fr + fl - - fl - fr))
					  (if phone? 5 10)  ;; length
					  60                ;; angle
					  4))               ;; level

		    ;; koch - page 10
		    ((5) (draw-lsys-graph '(f - f - f - f)
					  '((f f f - f + f - f - f f))
					  (if phone? 8 20)  ;; length
					  90                ;; angle
					  3))               ;; level

		    ;; faas - page 17
		    ((6) (draw-lsys-graph '(- l)
					  '((l l f + r f r + f l - f - l f l f l - f r f r +) (r - l f l f + r f r f r + f + r f - l f l - f r))
					  (if phone? 5 20)  ;; length
					  90                ;; angle
					  3))               ;; level

		    )
		    (log-usage 'feature '((downloaded . "yes") ("github" . "yes")))
)))
