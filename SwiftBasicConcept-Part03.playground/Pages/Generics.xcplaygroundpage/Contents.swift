
import Foundation


//MARK: - Generic in Swift

/*Swift Generics allows us to create a single function and class (or any other types) that can be used with different data types.*/




//MARK: - Swift Generic Function

/*
 In Swift, we can create a function that can be used with any type of data. Such a function is known as a Generic Function.
 */

func sum<T>(a: T) -> T {
    return a
}

let res = sum(a: 10.2)
print(res)

//MARK: - Swift Generic Class

/*
 Similar to the generic function, we can also create a class that can be used with any type of data. Such a class is known as Generic Class.
 */

class Demo<T> {
    var a: T
    
    init(a: T) {
        self.a = a
    }
    
    func demoValue() -> T {
        return self.a
    }
}

var obj1 = Demo<String>(a: "bjbjejfb")
print(obj1.demoValue())


//MARK: - Type Constraints in Swift Generics

/*
 In general, the type parameter can accept any data type (Int, String, Double, ...).

 However, if we want to use generics for some specific types (such as accepting data of number types) only, then we can use type constraints.
 */

func biggest<T: Numeric>(a: T,b: T) -> T {
        return a + b
}

let bigNum = biggest(a: 20.5, b: 5)
print(bigNum)
