
import Foundation

//MARK: - Closure with no parameter

var message = {
    print("Hello World")
}

message()


//MARK: - Closure with parameter

var greeting = { (_ msg: String) in
    print("Hi \(msg)")
}

greeting("anand")


//MARK: - Closure with parameter and return type

var sumNum = {(a: Int,b: Int) -> (Int) in
    return a + b
}

print(sumNum(10, 5))


//MARK: - Closure with function parameter

func printMsg(val: () -> ()) {
    val()
}

printMsg {
    print("hi")
}

func sumTwoNum(sum: (Int, Int) -> ())  {
     sum(10, 5)
}

sumTwoNum { x, y in
    print(x + y)
}
