/*=====================================CodeWithAnand====================================*/

import UIKit

print("Do Like and Subscribe my channel CodeWithAnand or @bikkypanday8999")
let MyYoutubeChannel = URL(string: "https://www.youtube.com/@bikkypanday8999")

let TodayTopics = ["Let","Var","MultiLineString","Optional","array","dictonary","Default","SWitch","Function","Touple","Closures"]

// MARK: - LET vs VAR

var myVariable = 42
//var myVariable: Int = 42

myVariable = 50
print(myVariable)

let label = "The width is"
let width = 94

/*Try removing the conversion to String from the last line. What error do you get? */
let widthLabel = label + String(width)

/*Use three double quotation marks (""") for strings that take up multiple lines.*/
/* Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting. */
let apples = 3
let oranges = 5
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

let myConstant = 42
//myConstant = 60


// MARK: - array vs dictonary

/*Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.*/

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

/*Arrays automatically grow as you add elements.*/
fruits.append("blueberries")
print(fruits)
/*To create an empty array or dictionary, use the initializer syntax.*/

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
/*If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:]—for example, when you set a new value for a variable or pass an argument to a function.*/

fruits = []
occupations = [:]


// MARK: - OPTIONALS

/*Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
 */

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting1 = "Hello!"
if let name = optionalName {
    greeting1 = "Hello, \(name)"
}
print(greeting1)


/*Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.*/

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)


//MARK: - SWITCH

/*Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.*/

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

/*Replace the _ with a variable name, and keep track of which kind of number was the largest.*/

//MARK: - Dictonary

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)



// MARK: - Functions and Closures


/*Use func to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -> to separate the parameter names and types from the function’s return type.*/

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

greet(person: "Bob", day: "Tuesday")

/*Remove the day parameter. Add a parameter to include today’s lunch special in the greeting.*/

/*By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.*/

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


/*Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.*/

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"


func expTouple(a:Int,b:Int)-> (x:Int,y:Int) {
    let sum = a + b
    let sub = a - b
    return (sum,sub)
}

let var1 = expTouple(a: 10, b: 5)
print(var1.0)
print(var1.y)

let numbers = [10,14,1,20,25]

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let tempVar = numbers.map({return $0 * 3})
print(tempVar)


let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
