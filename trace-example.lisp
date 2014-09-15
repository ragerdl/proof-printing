acl2h

:q

(defvar *entries* nil)

(defvar *exits* nil)

(lp)

(trace!
 (rewrite-with-lemma
  :entry (pprogn
          (setf *entries* 
                (cons (list (1+ (@ trace-level))
                            'rewrite-with-lemma 
                            term
                            (base-symbol (access rewrite-rule lemma :rune)))
                      *entries*)) 
          arglist)
  :exit (pprogn
         (setf *exits* 
               (cons (list (@ trace-level)
                           'rewrite-with-lemma
                           (cadr values)
                           (caddr values))
                     *exits*)) 
         values)))


(thm (equal (append (append x y) z) (append x (append y z))))

:q

*entries*
*exits*