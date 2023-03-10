
import Foundation

//MARK:- All About Initializer

/*
 An initializer is a special type of function that is used to create an object of a class or struct.
 */


 //declare a class
class Wall {
    var lenght: Double
    var height: Double
    
//    init() {
//        self.height = 10.3
//        self.lenght =  11.2
//        print("this lenght \(self.lenght) and this height \(self.height)")
//    }
    
    init(lenght: Double, height: Double) {
        self.height = height
        self.lenght = lenght
    }
    
    convenience init() {
        self.init(lenght: 22.0, height: 33.0)
    }
    
    func calArea() -> Double {
        return self.lenght * self.height
    }
}


// create an object

var wall1 = Wall()
print("cal area=== \(wall1.calArea())")


var wall2 = Wall(lenght: 11.2, height: 2.2)
print("cal area=== \(wall2.calArea())")



//MARK: - Swift convenience Initializer



/*
 In previous examples, the initializer we defined were primary initializers of the class. These primary initializers are also called designated initializers.
 
 However, we can also define a secondary/supporting initializer for a class called convenience initializer.

 To define a convenience initializer, we use the convenience keyword before the initializer.
 
 Note: Convenience Initializers are useful when it comes to assigning default values to stored properties.
 
 */





//MARK: - Failable Initializer


/*
 In some cases initializers might or might not work, this is called a failable initializer.

 We write a failable initializer by placing a question mark (?) after the init keyword and return nil if something goes wrong.
 */

class File {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            print("folder empty output-1")
            return nil
        }
        self.folder = folder
    }
}

let obj1 = File(folder: "")

if obj1 != nil {
    print("folder exist")
} else {
    print("folder not exist output-2")
}





//MARK: - Memberwise Initializer for structs


/*
 In Swift, we are not required to create an initializer while working with structs. Swift automatically generates a memberwise for us
 */

struct Member {
    let name: String
    let id: Int
}

let mem = Member(name: "cnjdnjc", id: 19)
print(mem.name,mem.id)
