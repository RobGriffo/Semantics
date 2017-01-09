#lang scheme
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

;;;;;;;;;;;;;;;;;;;;AUGUST;;;;;;;;;;;;;;;;;;;;;

(define (tr xs)
  (apply map list xs))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;2015;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;JANUARY;;;;;;;;;;;;;;;;;;;;;
(define after-filter
  (λ (predicate xs)
    (cond [(or (null? xs) (null? (cdr xs))) '()]                 ;;if input is NULL or length<2 => do nothing
          [else
           (cond [(predicate (car xs))                                ;;check first element with predicate
                  (cons (cadr xs) (after-filter predicate (cdr xs)))] ;;if true, store element to it's right and recursively call function on tail
                 [else (after-filter predicate (cdr xs))])])))        ;;if false, recursively call function on tail.