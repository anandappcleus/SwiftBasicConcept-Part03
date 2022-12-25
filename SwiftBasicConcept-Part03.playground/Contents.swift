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



//MARK: -  Part 3 - 2nd verion

/*=================================================CodeWithAnand=========================================================*/

print("Do Like and Subscribe my channel CodeWithAnand or @bikkypanday8999")

let MyYoutubeChannel_ = URL(string: "https://www.youtube.com/@bikkypanday8999")




//MARK: - Objects and Classes

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)



class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
/*Notice how self is used to distinguish the name property from the name argument to the initializer. The arguments to the initializer are passed like a function call when you create an instance of the class. Every property needs a value assigned—either in its declaration (as with numberOfSides) or in the initializer (as with name).*/

//MARK: - Single Level inhertance

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

//MARK: - In addition to simple properties that are stored, properties can have a getter and a setter.

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"

/*In the setter for perimeter, the new value has the implicit name newValue. You can provide an explicit name in parentheses after set.
 
 Notice that the initializer for the EquilateralTriangle class has three different steps:

 Setting the value of properties that the subclass declares.

 Calling the superclass’s initializer.

 Changing the value of properties defined by the superclass. Any additional setup work that uses methods, getters, or setters can also be done at this point.
*/


//MARK: - Enumerations and Structures
//Use enum to create an enumeration. Like classes and all other named types, enumerations can have methods associated with them.

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
print(ace)
let aceRawValue = ace.rawValue
print(aceRawValue)

/*By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values. In the example above, Ace is explicitly given a raw value of 1, and the rest of the raw values are assigned in order. You can also use strings or floating-point numbers as the raw type of an enumeration. Use the rawValue property to access the raw value of an enumeration case.*/

/*Use the init?(rawValue:) initializer to make an instance of an enumeration from a raw value. It returns either the enumeration case matching the raw value or nil if there’s no matching Rank.
 */
let convertedRank = Rank(rawValue: 2)
print(convertedRank!.simpleDescription())
//print(convertedRank!.simpleDescription())
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
}

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
/*Notice the two ways that the hearts case of the enumeration is referred to above: When assigning a value to the hearts constant, the enumeration case Suit.hearts is referred to by its full name because the constant doesn’t have an explicit type specified. Inside the switch, the enumeration case is referred to by the abbreviated form .hearts because the value of self is already known to be a suit. You can use the abbreviated form anytime the value’s type is already known.*/


//MARK: -  Part 3 - 3nd verion

/*=================================================CodeWithAnand=========================================================*/

print("Do Like and Subscribe my channel CodeWithAnand or @bikkypanday8999")

let MyYoutubeChannel__ = URL(string: "https://www.youtube.com/@bikkypanday8999")

//MARK: - Enum with Associated type

/*associated values as behaving like stored properties of the enumeration case instance. For example, consider the case of requesting the sunrise and sunset times from a server. The server either responds with the requested information, or it responds with a description of what went wrong.**/

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."


//MARK: - Structure

/*Structures support many of the same behaviors as classes, including methods and initializers. One of the most important differences between structures and classes is that structures are always copied when they’re passed around in your code, but classes are passed by reference.*/

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)

//MARK: - Protocols and Extensions

//Use protocol to declare a protocol.

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//Classes, enumerations, and structures can all adopt protocols.

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)


struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)

//MARK: CLASS VS STRUCTURE

struct Coordinates {
    var lat: Double
    var lng: Double
}

var point1:Coordinates = Coordinates(lat: 5.519, lng: 5.7599)
// here, we are setting the values of point2 to be the value of point1
var point2:Coordinates = point1

point2.lat = 6.45
point2.lng = 8.211

print(point2) // expected output: Coordinates(lat: 6.45, lng: 8.211)
print(point1) // expected output: Coordinates(lat: 5.519, lng: 5.7599)


class User {
  var  firstName: String
  var  lastName: String
  var  gender: String
  var  age: Int

    init(firstName: String, lastName: String, gender: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.age = age
    }
}

var user1:User  = User(firstName:  "Ejiro", lastName: "Asiuwhu", gender: "male", age: 29)
// user2 now holds the same value as user1
var user2:User  = user1

user1.age = 30

print(user1.age) // expected output: 30
print(user2.age) // expected output: 30


/*
 When to use classes vs. structs in Swift
 The apple official documentation largely recommends that users should use structs by default. This is mostly because structs are much safer and bug-free, especially in a multithreaded environment. Structs are also preferable if they are relatively small and copyable because copying structs is safer than having multiple references to the same instance.

 When choosing between structs and classes, it’s important to remember the key differences:
 
 Classes are reference types, and structs are value types
 If class inheritance is not needed, structs are faster and more memory efficient
 Use structs for unique copies of an object with independent states
 Use structs when working with a few, relatively simple data values
 Use classes to control an object’s identity
 Use structs when there is no need to control an object’s identity
*/
