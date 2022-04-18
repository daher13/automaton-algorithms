#lang racket

(struct state
  (name)
  #:transparent)

(struct transition
  (initial symbol result)
  #:transparent)

(struct dfa
  (states
   transitions
   initial
   final))

(define getResult (lambda (initial symbol transitions)
                    (for/list ([transition transitions])
                      (and (eq? transition-initial initial) (eq? transition-symbol symbol))
                      ; body
                      )
                    ))
(getResult "ola" "ola" (list (list "ola" "ola" 3) (list "ola" "ola" 1)))


(provide (all-defined-out))