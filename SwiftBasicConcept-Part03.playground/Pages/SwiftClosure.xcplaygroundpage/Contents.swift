//: [Previous](@previous)

import Foundation

/*{ (parameter) -> (returnType) in
    //Statement
}*/

//MARK: - Variable

var getVal = {
    print("hello world")
}

getVal()

var getName = {(name: String) in
    print("hello \(name)")
}

getName("anand")


var getStrname = {(val: Int) -> (Int) in
    return val * val
    
}

print(getStrname(3))

//MARK: - Closure as function parameter

func printVal(val:() -> ()) {
    val()
}

printVal(val: {
    print("mssg")
})

func grabFood(data: () -> ()) {
    print("data")
    data()
}

grabFood(data:{
    print("function called")
})


//MARK: - Trailing closure

func getData(msg: String,completion: () -> ()) {
    print(msg)
    completion()
    
}

getData(msg: "this is for test") {
    print("nnjnjnjn")
}


func display(greet: @autoclosure() -> ()) {
    greet()
}

display(greet:print("success"))

protocol ABC {
    func show()
}

extension ABC {
    func show() {
        print("ABC")
    }
}


func fetchNumbers() async -> [Int] {
        return [2,3,4,6,78,89]
    }
    
    func fetchNumber() async -> Int {
        Int.random(in: 1...10)
    }

    func calculateTotal(for numbers: [Int]) async -> Int {
        let total = numbers.reduce(0, +)
        return total
    }

    func printOutput(output: Int) async -> String {
         return "The output is \(output)"
    }

    func process() async {
        //async let firstPhoto = downloadPhoto(named: photoNames[0])
        async let number1 =  fetchNumber()
        async let number2 =  fetchNumber()
        async let number3 =  fetchNumber()
        let numbers = await [number1, number2, number3]

        //let numbers = await fetchNumbers()
        print(numbers)
        let total = await calculateTotal(for: numbers)
        print(total)
        let output = await printOutput(output: total)
        print(output)
        
    }
    
    
Task {
    await process()
   }

