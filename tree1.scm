;; feature-code
;; tree program
(draw-program
 "Tree Program"
  (lambda ()
    (let ((m (if (ui:running-in-iphone?) 1 2)))
      (draw-lsys-graph '(f)
                       '((f f [ + + f [ f f ] + f ] f [ - f - f ] f [ - - f [ + f ] - f f ] f [ + f ]))
                       (* m 8)  ;; length
                       24   ;; angle
                       2  ;; level
                       ))))
