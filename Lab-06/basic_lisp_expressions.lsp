(print(+ 5 2))

(print(- (+ (* 5 2) 10) 4)) ;5x2+10-4

(print (mod 6 2))  ; 6 % 2

(print (if (< 6 7) "Yes" "No"))

(print (if (= (mod 7 2) 0) "Even" "Odd" ))

;defun keywoard for defining function
(defun factorial(n) (if (= n 0) 1 (* n (factorial(- n 1)))))
(print (factorial 5))