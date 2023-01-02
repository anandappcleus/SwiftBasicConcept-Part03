//MARK: - ======================CodeWithAnand10========================

import Foundation

//MARK: - For In Vs For Each

//Ranges

for num in  0...10 {
    print(num)
}


//Dictonary
let dict = ["a":"apple","b":"bed","c":"cat"]

for (key,value) in dict {
    print("key--\(key) value---\(value)")
}



//Set
let set = ["apple","bed","cat"]

for res in set {
    print(res)
}


//MARK: - For Each

//Ranges

(0...10).forEach { val in
    print(val)
}


//Dictonary

let dict1 = ["a":"apple","b":"bed","c":"cat"]

dict1.forEach { (key,val) in
    print("key--\(key) value---\(val)")
}



//Set

let set1 = ["apple","bed","cat"]

for res in set1 {
    print(res)
}

/*
 1. Break and continue statements cannot be used in for-each loop
 break and continue are the basic syntaxes of for loop which is used to either break the loop iteration or to continue to the next element.
 Since for-each is not an operator but it's a function, break and continue can't be used inside a for-each iteration.
 */


var evnNum1  = [Int]()

for num in (0...10) {
    guard num % 2 == 0 else {continue}
    evnNum1.append(num)
}
print(evnNum)


(0...10).forEach { num in
    guard num % 2 == 0 else {continue}
    evnNum1.append(num)
}



/*
 2. Return from scope is not possible from for-in loop
 Return from the scope of the for loop is not possible in the case of the for-in loop. Please note that we can use return in the for-in loop if inside a function, but that will return from the function but not from the for-loop scope.
 */

 
var evnNum  = [Int]()

for num in (0...10) {
    guard num % 2 == 0 else {return}
    evnNum.append(num)
}
print(evnNum)


(0...10).forEach { num in
    guard num % 2 == 0 else {return}
    evnNum.append(num)
}

print(evnNum)



/*
 3. For-each can be used with Swift's closures or first class functions
 Since for-each is a function but not an operator, it can be used with closures or first-class functions whereas the same is not possible with the case of the for-in loop.
 */


func doSomethingWithNumber(for number : Int) {
    guard number % 2 == 0 else {
            return
        }
    print(number)
}

(0...10).forEach(doSomethingWithNumber)
