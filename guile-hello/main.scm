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
