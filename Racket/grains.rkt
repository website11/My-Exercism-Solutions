#lang racket

(provide square total)
(define (square a-square)
  (expt 2 (- a-square 1)))
(define (total)
  (for/sum([i (in-range 1 65)]) (square i)))
