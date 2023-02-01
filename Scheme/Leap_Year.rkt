(import (rnrs))
(define (leap-year? year)
  (if (eq? 0 (modulo year 4))
      (if (eq? 0 (modulo year 100))
          (if (eq? 0 (modulo year 400))
              #t
              #f)
          #t)
      #f))
