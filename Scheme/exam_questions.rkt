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
(define (after-filter predicate ls)
    (cond [(<(length ls)2) '()]                                       ;;if input is NULL or length<2 => do nothing
          [else
           (cond [(predicate (car ls))                                ;;check first element with predicate
                  (cons (cadr ls) (after-filter predicate (cdr ls)))] ;;if true, store element to it's right and recursively call function on tail
                 [else (after-filter predicate (cdr ls))])]))         ;;if false, recursively call function on tail.

        ;;;;without square brackets;;;;
(define (after-filter-2 predicate ls)
    (cond ((<(length ls)2) '())                                       ;;if input is NULL or length<2 => do nothing
          (else
           (cond ((predicate (car ls))                                ;;check first element with predicate
                  (cons (cadr ls) (after-filter predicate (cdr ls)))) ;;if true, store element to it's right and recursively call function on tail
                 (else (after-filter predicate (cdr ls)))))))         ;;if false, recursively call function on tail.


;;;;;;;;;;;;;;;;;;;;AUGUST;;;;;;;;;;;;;;;;;;;;;

(define (reverse-with-count_ xs ys)
	(reverse (flatten (repeat-list_ xs ys))))

(define (repeat_ x y)
	(map (lambda(fn) x) (range y)))

(define (repeat-list_ xs ys)
	(map (lambda(x y) (repeat_ x y)) xs ys))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;2014;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;AUGUST;;;;;;;;;;;;;;;;;;;;;

;;;;;;Contributed by github.com/cieran;;;;;;;;;;;
(define (add-numbers xs)
  (sum-them (flatten xs)))

(define (sum-them xs)
  (apply + (find-nums xs)))

(define (find-nums xs)
  (cond [(=(length xs)0) '()]
         [else (cond [(number? (car xs))
         (cons (car xs) (find-nums (cdr xs)))]
        [else (find-nums (cdr xs))])]))