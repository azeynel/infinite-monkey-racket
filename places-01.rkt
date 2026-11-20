#lang racket

(require racket/place)

(define (worker p)
  (place-channel-put p
                     (list "Merhaba, ben bir place'im!")))

(define places
  (for/list ([i (in-range 4)])
    (place worker)))

(define results
  (for/list ([p places])
    (place-channel-get p)))

(displayln results)
