#lang racket
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;2016;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;JANUARY;;;;;;;;;;;;;;;;;;;;;
(define (reverse-with-count xs ys)
	(reverse (flatten (repeat-list xs ys))))

(define (repeat x y)
	(map (lambda(fn) x) (range y)))

(define (repeat-list xs ys)
	(map (lambda(x y) (repeat x y)) xs ys))