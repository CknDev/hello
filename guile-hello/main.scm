(display "hello")
(newline)

(define l '(a . b))
(display l)
(newline)

(define l-sym '('a 'b))
(display l-sym)
(display (car l-sym))

(newline)

(define ll (list '("Superman" "Clark Kent")
                 '("Batman" "Bruce Wayne")))
(display (cadr (assoc "Superman" ll)))

(newline)

(define (add4 v) (call/cc
                  (lambda(k)
                    (+ (k v) 2))))

(define five (+ (add4 3) 2))
(display five)

(newline)
(display (vector 1 2))
