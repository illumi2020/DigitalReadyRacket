;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 6 - Chapters 1 and 2 Review
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

#| Question 1:
On a *single line comment*,
write your name and today's date
|#

;Tenayish 8/26/22

#| Question 2:
On a *multi line comment*,
answer the following question:
What does "define" do?
|#

#|
Define is a statment that starts a function
|#

#| Question 3:
Define the following data:

A variable called "first-name" containing your first name
A variable called "last-name" containing your last name
A variable called "age" containing your age

You MUST reference those variables to create these variables:
A variable called "vote?" that contains if you're old enough to vote
A variable called "intro" that says
  "Hi! My name is *first-name* *last-name* and I am *age* years old"
Hint: Use (number->string age) to convert your age to a string.
|#

(define first-name "Tenayish")
(define last-name "Cater")
(define age 19)
(define vote >= age 18)
(define intro (string-append "Hi! My name is " first-name " " last-name "and I am " (number-> string age) "years old")) 

#| Question 4:
Create a function called "next-squared"
that takes in a number and returns
the number 1 above it squared.

For example,
(next-squared 2) -> 9
|#

#|takes in a number and returns
the number 1 above it squared
|#
;num->num
(define (next-squared N1)
 (expt (+ 1 N1) 2))

 (check-expect(next-squared 4) 25 )

#| Question 5
Create a function called "order-drink" that takes in
a number and a string representing an amount of money
and a preferred size.

If the size is "Small" and the person has more than 2.00 dollars,
print "Ordered Small"

If the size is "Medium" and the person has more than 3.50 dollars,
print "Ordered Medium"

If the size is "Large" and the person has more than 5.00 dollars,
print "Ordered Large"

If the size is not "Small", "Medium", or "Large", or the person
does not have enough money for the drink they ordered,
print "Invalid Order".

For example,
(order-drink "Small" 6.43) -> "Ordered Small"
(order-drink "McFlurry" 23.43) -> "Invalid Order"
(order-drink "Large" 2.32) -> "Invalid Order"
|#

#|
takes in a string and a number to give back a string
|#
;string num -> string
(define (order-drink str N1)
  (cond
    [(and (string=? "Small" str) (> N1 2.00)) "Ordered Small"]  
    [(and (string=? "Medium" str) (> N1 3.50)) "Ordered Medium"]
    [(and (string=? "Large" str) (> N1 5.00)) "Ordered Large"]
    [else "Invalid Order"]))

  (check-expect(order-drink "Small" 3.00) "Ordered Small" )
  (check-expect(order-drink "Medium" 5.00) "Ordered Medium" )
  (check-expect(order-drink "Large" 10.00) "Ordered Large" )
  (check-expect(order-drink "Small" 1.00) "Invalid Order" )
  (check-expect(order-drink "Medium" 1.00) "Invalid Order")
  (check-expect(order-drink "Large" 1) "Invalid Order" )
  (check-expect(order-drink "extra large" 1) "Invalid Order" )
  (check-expect(order-drink "extra large" "tea") "Invalid Order" )

#| Question 6
Define variables called "username" and "password"
that contain a username and password of your choosing.

Create a function called "login" that takes in two strings
representing a username and password.
If the username and password both match, return "Logged In".
The username should NOT be case sensitive, the password should be.
If the username is incorrect, print "Incorrect Username"
If the password is incorrect, print "Incorrect Password"

For example, if username is "Account123" and password is "fishbowl12"...
(login account123 "fishbowl12") -> "Logged In"
(login ACCOunt123 "fishbowl12") -> "Logged In"
(login account123 "FISHBOWL12") -> "Incorrect Password"
(login account321 "fishbowl12") -> "Incorrect Username"
|#

#|
takes in two strings then checks
to see if they match the set value
|#
;2string -> string

(define username "Hello" )
(define password "Kitty" )

(define (login userN passW)
  (cond
   [(and (string=? string-downcase userN) (string-downcase username)(string=? passW password))"Logged In"]
   [(and (string=? userN username)(string=? passW password))"Incorrect Password"]
   [else "Incorrect Username"]))
  
  ;(check-expect(login Hello "Kitty" ) "Logged In" )
  ;(check-expect(login hello "kitty" ) "Logged In" )
  ;(check-expect(login Hello "Cat" ) "Incorrect Password" )
  ;(check-expect(login Hi "Kitty" ) "Incorrect Username" )
  

#| Bonus Question:
Create a function called "string-invert"
that takes in a string and appends
the second half the string to the first
half of the string.

Hint: Use the "round" function to allow
this to work on odd length strings.

For example,
(string-invert "GoldFish") -> FishGold
(string-invert "Hello") -> "lloHe"
|#
