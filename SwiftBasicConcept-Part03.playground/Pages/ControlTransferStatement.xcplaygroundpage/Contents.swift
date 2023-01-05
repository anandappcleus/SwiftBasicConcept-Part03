
import Foundation

//MARK: - Control Transfer Statements in Swift

var foundNumbers = [Int]()
var numbersArray = [1, 2, 3, 4, 5]
var numberToSearchFor = 2
var numNotInclude = 2


/*
 Terminology:
 
 break: Breaks the current execution whenever the keyword is encountered
 
 continue: Stops the execution of a loop at the current point, and returns control to the next iteration of the loop
 
 Control Transfer Statements: Keywords that allow you to transfer control from one piece of code to another
 
 fallthrough: Make a Switch run the next case after a match
 
 return: Make a function return
 
 throw: If a function throws an error the error is propogated from that function
 
 */


//MARK: - break

/*The break keyword stops the execution of a switch or loop as soon as the break keyword is encountered.
 
 In a loop
 
 A good example of this is when you traverse an Array and when you find a certain element, you are done.*/

//In a loop

for val in numbersArray {
    print(val)
    if numberToSearchFor == val {
        break
    }
}


//In a Switch

switch numberToSearchFor {
case 1:
    print(1)
case 2:
    print(2)
case 3:
    print(3)
default: break
}


//MARK: - continue

/*The continue keyword works similarly to the break keyword. However, when the continue keyword is run, a loop will stop execution and move to the next iteration of the loop.*/

for val in numbersArray {
    if numNotInclude == val {
        continue
    }
    foundNumbers.append(val)
}
print(foundNumbers)


//MARK: - fallthrough
/*In Swift when a case statement is matched usually the execution stops there. fallthrough leads the execution to run the next case — even if that case doesn’t match.*/

switch numberToSearchFor {
case 1:
    print(1)
case 2:
    print(2)
    fallthrough
case 3:
    print(3)
default: break
}

//MARK: - return

/*Within a function return can either return a value, or signify the early termination of a function*/

var optStr: String?

func toTestReturn() {
    guard let val = optStr else {return}
}
toTestReturn()
  
//MARK: - throw

/*Functions can be marked as throws are throwing functions, which means that they can generate errors which are then propogated.*/

enum ErrorType: Error {
    case dataNotFound
}

func throeError() throws {
    throw ErrorType.dataNotFound
}

do {
    let data = try throeError()
}
catch {
    print("error")
}
    
