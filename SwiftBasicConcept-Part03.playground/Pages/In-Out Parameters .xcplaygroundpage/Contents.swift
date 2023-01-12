
import Foundation

//MARK: -  In-Out Parameters

/*
 Function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake. If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
 */


func swapTwoInt(a: inout Int,b: inout Int) {
    let tempVar = a
    a = b
    b = tempVar
}

var first = 10
var second = 20

var result = swapTwoInt(a: &first, b: &second)

print("first number===\(first) and second number==\(second)")
