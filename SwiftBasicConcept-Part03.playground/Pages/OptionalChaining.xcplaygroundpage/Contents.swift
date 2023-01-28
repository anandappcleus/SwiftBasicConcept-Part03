
import Foundation

//MARK: - Optional Chaining

class Person {
    
    var home: Home? = Home()
    
}

class Home {
     var noOfDoors = 4
}

var john = Person()

print(john.home)

//print(john.home!.noOfDoors)

if let doors  = john.home?.noOfDoors {
    print("if executed===\(doors)")

} else {
    print("else executed")
}
