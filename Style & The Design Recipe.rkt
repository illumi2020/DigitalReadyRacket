;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 3 - Design Recipe
Submit on Google Classroom by the end of class.
|#

; Question 1:
; What does code style consist of?
 ;functions, variables, and how blank spce is used.
; Why is style important?
;helps others understand, and easyer to go back to.
; Question 2:
; Rewrite the following block of code
; adhering to proper Racket style

#|
(define
(
firstFunction num1 num2
)
  (
    * num1 (+ num2 1))
  )
|#

(define(firstFunction num1 num2)
(* num1 (+ num2 1)))

; Question 3:
; What is a predicate function?
;it is a function that returns a boolean
; What symbol should all predicate function names end with?
 ; there should always be a question mark
; Question 4:
#|
What are the signatures of the following functions?
- sqrt
- string-length
- substring
- string=?
|#
;substring: num - num ->
;string-length: string + string-> string
;sqrt: num num ->num
;string=?: string = string -> Boolean

; Question 5:
#|
Make a function called "string-glue" that takes in two strings,
and appends the first half of the first string
to the second half of the second string.

For example:
(string-glue "Edward" "Knight") -> "Edwght"

To receieve full credit, you must use the entire design recipe
consisting of:
- A purpose statement
- A signature
- An implementation that adheres to Racket style
- Sufficient tests
|#
;Propose: Take two strings than print only the first half
;String-appent: (takes two strings) string string-> string
;String-length: string string -> num
(define (string-glue str1 str2)
  (string-append(substring str1 0 (/ (string-length str1) 2))
  (substring str2 (/ (string-length str2) 2) (string-length str2))))

(check-expect (string-glue "Beauty" "Birthday")"Beahday")
; Question 6
#|
Write a function called "max-length-string"
that takes in 3 strings and prints the
length of the longest string

For example,
(max-length-string "Joe" "Shmoe" "Road") -> 5

Use the complete design recipe and
sufficiently test your function
|#

;make a function that takes in 3 strings, and
;gives back the number of the longest string
;string string string -> string
(define(max-length-string W1 W2 W3)
  ;string->num
 (max (string-length W1)(string-length W2)(string-length W3)))

  (check-expect (max-length-string "Beauty" "Birthday" "ballon")8)

; Question 7
#|
Write a function called "number-check"
that takes in 3 numbers, multiplies
them together and returns if
the product is greater than 100

Use the complete design recipe and
sufficiently test your function
|#

;A function that takes 3 numbers and

(define (number-check N1 N2 N3)
  ; num num num -> boolean
  (* N1 N2 N3)
  ;num -> boolean
  (> num 100))


(check-expect (number-check "Beauty" "Birthday" "ballon")8)

; Bonus Question:
#|
Write a function called "cutoff" that takes in 2 strings
and prints the second string, but only
with the amount of characters in the first string.

If the first string has more letters than the second
string, the entire second string will print.

For example,
(cutoff "Ben" "Hasslehoff") -> "Has"

Use the complete design recipe and
sufficiently test your function
|#