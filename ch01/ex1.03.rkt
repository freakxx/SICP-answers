#lang sicp

; 中文版题目翻译出错， 应为两个数的平方和

(define (max a b)
  (if (>= a b)
      a
      b)
  )

(define (min a b)
  (if (<= a b)
      a
      b)
  )

(define (square a)
  (* a a)
  )

(define (sum-of-squares a b)
  (+ (square a) (square b))
  )

(define (add a b c)
  (+ (max a b) (max (min a b) c))
  )

(define (sum-of-bigger-numbers-squares a b c)
  (sum-of-squares (max a b) (max (min a b) c))
  )