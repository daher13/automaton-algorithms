#lang racket

(struct dfa
  (states
   transitions
   start
   finals)
  )

; (define (delta* m s)

;   )

(struct state
  (name type)
  #:transparent)

(struct transition
  (initialState symbol resultantState)
  #:transparent)

(let ([s1 (state 1 "initial")]) s1)
(let ([s2 (state 2 "common")]) s2)
(let ([s3 (state 3 "final")]) s3)

; (let [ (transitions (list
;                      (transition 's1 "a" 's2)
;                      (transition 's1 "b" 's1)
;                      (transition 's2 "a" 's2)
;                      (transition 's2 "b" 's3)
;                      ))] transitions)

