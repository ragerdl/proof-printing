acl2h

:q

(defun trace-level ()
  ccl::*trace-level*)

(lp)

(trace!
 (rewrite-with-lemma
  :entry (pprogn
          (setf *entries* 
                (cons (trace-level)
                      (cons (list 'rewrite-with-lemma term
                                  (base-symbol (access rewrite-rule lemma :rune)))
                            *entries*))) 
          arglist)
  :exit (pprogn
         (setf *exits* 
               (cons (trace-level)
                     (cons (list 'rewrite-with-lemma
                                 (cadr values)
                                 (caddr values))
                           *exits*))) 
         values)))


(thm (equal (append (append x y) z) (append x (append y z))))

:q

*entries*