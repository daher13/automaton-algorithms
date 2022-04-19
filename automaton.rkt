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

(define processSymbol (lambda (initial symbol transitions)
                        (for/list ([transition transitions])
                          (and (eq? transition-initial initial) (eq? transition-symbol symbol))
                          ; body
                          )
                        ))
(processSymbol "ola" "ola" (list (list "ola" "ola" 3) (list "ola" "ola" 1)))

(define isFinal (lambda (state states)
                  (if (member state states) #t #f)))

(isFinal "s3" (list "s1" "s2"))

(provide (all-defined-out))