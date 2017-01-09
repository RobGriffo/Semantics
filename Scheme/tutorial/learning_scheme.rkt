#lang racket
(define (print-head xs)
	(car xs))


(define (flip-list xs)
	(reverse xs))

(define (my-list-ref xs n o)
	(if (zero? n)
		(car xs)
		(my-list-ref (cdr xs) (- n 1))))

(define (db xs) (* xs 2))
(define (db-list xs)(map db xs))
(define (flip-db ys)
  (reverse (db-list ys)))


