;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 5 - Truth Tables and Cond
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

; Question 1
; Complete the following truth table:
#|
---------------------
| P | Q | (and P Q)  |
| #t| #t|      t     |
| #t| #f|      f     |
| #f| #t|      f     |
| #f| #f|      f     |
---------------------
|#

; Question 2
; Complete the following truth table:

#|
-------------------------------------
| P | Q | (not P) | (and (not P) Q))  |
| #t| #t|   f      |        f         |
| #t| #f|   f      |        f         |
| #f| #t|   t      |        t         |
| #f| #f|   t      |        t         |
--------------------------------------
|#

; Question 3
; Complete the following truth table:

#|
--------------------------------------------------------
| P | Q | (and P Q) | (not P) | (or (not P) (and P Q)) |
| #t| #t|   t       |   f     |         f              |
| #t| #f|   f       |   f     |         f              |        
| #f| #t|   f       |   t     |         f              |       
| #f| #f|   f       |   t     |         f              |        
--------------------------------------------------------
|#

#| Question 5:
Make a function called "num-cond" that takes in 2 numbers.
If the first number is bigger, subtract the two numbers.
If the second number is bigger, multiply the two numbers.
If they are the same number, simply return that number.
|#

;num-cond=?
;2num -> 1num
(define (num-cond N1 N2)
  (cond
  [(> N1 N2)(- N1 N2)]
  [(< N1 N2)(* N1 N2)]
  [else (+ N1 N1)]))

  (check-expect(num-cond 10 5) 5)
  (check-expect(num-cond 5 10) 50)
  (check-expect(num-cond 10 10) 20)
  
#| Question 6:
Make a function called "super-cond" that takes in 3 numbers.
If all three numbers are negative, return 0
If the first two numbers are negative, return 1
If the first and third numbers are negative, return 2.
If the second and third numbers are negative, return 3.
If all of the numbers are positive, return the product of all 3 numbers.
|#

;super-cond=?
;3num->1number

(define (super-cond N1 N2 N3)
  (cond
  [(and (< N1 0) (< N2 0) (< N3 0))0]
  [(and (< N1 0) (< N2 0) (> N3 0))1]
  [(and (< N1 0) (> N2 0) (< N3 0))2]
  [(and (> N1 0) (< N2 0) (< N3 0))3]
  [else(* N1 N2 N3)])) 
  

  (check-expect(super-cond -2 -4 -6) 0)
  (check-expect(super-cond -2 -4 6) 1)
  (check-expect(super-cond -2 4 -6) 2)
  (check-expect(super-cond 2 -4 -6) 3)
  (check-expect(super-cond 2 4 6) 48)

#| Bonus Question:
Make a function called "vowel-check" that takes in 1 string.
If the function contains a vowel, return the first vowel the string contains.
If the function contains no vowels, return "No Vowels".

For example,
(vowel-check "airplane") -> "a"
(vowel-check "bear") -> "e"
(vowel-check "xyz") -> "No Vowels"
|#

;vowel-check=?
;string-> string

(difine (vowel-check str) 