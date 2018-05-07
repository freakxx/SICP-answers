#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))
        )
  )


#|
((= x 0) (* 2 y))

由 cond 可以判断
(define (f n) (A 0 n))
其数学定义是: 2 * n
|#


#|
(else (A (- x 1) (A x (- y 1))))

由 cond 可以判断
(define (g n) (A 1 n))
其数学定义是 2 ^ n:
(* 2 (A 1 (n -1))
|#


#|
(else (A (- x 1) (A x (- y 1))))

由 cond 可以判断
(define (h n) (A 2 n)) 
其数学定义是: n 个 2 次幂的嵌套  
可以判断出：
(A 2 3) = (A 1 (A 2 2)) = (A 1 (A 1 (A 2 1))) = 16
(A 2 4) = (A 1 (A 2 3)) = (A 1 16) = 65535
|#

#|
(A n 2) == (A 0 2)
|#



#|
可参考: [SICP 习题集:练习 1.10 阿克曼函数](https://www.jianshu.com/p/2ef9308273a6)
|#