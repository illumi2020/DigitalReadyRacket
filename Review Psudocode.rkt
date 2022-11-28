;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 7 - Structures
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit

If a question asks you to make a structure,
it must follow the complete design recipe
including a definition, interpretation,
and appropriate examples to recieve full credit
|#

#| Question 1:
Define a new structure called "address"

An address should have a number, street, and town.

Follow the complete design recipe for data,
including a definition, interpretation,
and appropriate examples to recieve full credit.
|#

;an Address is a (make-address Number String String Number)
;interpretation - nu street town zip

(define-struct address (num street town))
(define example (make-address 2 "street" "town"))
(define example2 (make-address 3 "street2" "town2"))
(define example3 (make-address 24 "street3" "town3"))

#| Question 2:
Fill in the blanks with the correct functions:
|#

; The function to create a new address is: (define-struct address (num street town zip ect.))
; The function to access the number of an address is: (address-number)
; The function to access the street of an address is: (address-street)
; The function to access the town of an address is: (address-town)

#| Question 3:
If a house number is even, it is on the left side of the street.
If a house number is odd, it is on the right side of the street.

Make a function called "street-side" that takes in an address
and returns "Left" if the house is on the left side of the street,
and "Right" if the house is on the right side of the street.

Hint: You can use the functions (odd? num) or (even? num)
to determine is a number is even or odd.
|#

#|
Checks to see if a house is to the left or right of the street
|#
; address -> string
(define (street-side address)
  (if (even?(address-num address))"Left" "Right"))

  (check-expect(street-side example) "Left")
  (check-expect(street-side example2 ) "Right")
  
  
#| Question 4:
Define a new structure called "Student"

A student should have a name, gpa and address.
|#

;an Address is a (make-student Number String boolean int)
;interpretation - gpa addnameress
;

(define-struct student (name gpa address))
(define amber (make-student "Amber" 3.5 example))
(define amanda (make-student "Amanda" 1.5 example2))
(define craig (make-student "Craig" 2.0 example3))

#| Question 5:
Two students are neighbors if they live on the same street
and within 20 house numbers of eachother.

Create a function called "neighbors?" that takes in two students
and returns if they are neighbors.
|#

#|
Checks to see if 2 students are neighbors.
|#
;student-> boolean
(define (neighbors student student2)
  (address-street (address-num student); 20)#true #false))
  (address-street (address-num student2)))
                  
  (check-expect(street-side Amber Amanda) #true)
  (check-expect(street-side Amber Craig) #false)

#| Bonus Question:
Create a structure called "coordinate"
that has an x value and y value.

Create a function called "distance-formula"
that takes in two coordinates and calculates
the distance between them.

Hint: If two points are (x1, y1), (x2, y2),
the distance between them is
(sqrt ((x2 - x1)^2 + (y2 - y1)^2))
|#