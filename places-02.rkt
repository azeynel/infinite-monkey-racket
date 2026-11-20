#lang racket

(require racket/place)

(define places
  (for/list ([i (in-range 4)])
    (place p
      (place-channel-put p "Merhaba, ben bir place'im!"))))

(define results
  (for/list ([p places])
    (place-channel-get p)))

(displayln results)
