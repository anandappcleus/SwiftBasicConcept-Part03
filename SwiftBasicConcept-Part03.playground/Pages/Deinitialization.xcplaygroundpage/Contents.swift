
import Foundation

//MARK: - Swift Deinitialization

/*
 Deinitialization is a process to deallocate class instances when they're no longer needed. This frees up the memory space occupied by the system.

 We use the deinit keyword to create a deinitializer.
 */


class Memory {
    var space: String
    
    init() {
        self.space = "space allocated"
        print("Memory allocated==\(self.space)")
    }
    
    deinit {
        space = ""
        print("Memory deallocated===\(space)")
    }
    
}

var obj: Memory?  = Memory()
obj = nil








/*Here, Memory? indicates that result is an optional, so it can store two types of values:

1)values of the Memory type.
2)a nil value.
 
 */



/*
 Note:

 In Swift, we only use deinitializers when we manually want to deallocate instances. Otherwise, Swift automatically does the deallocation.
 
 Deinitializers can only be used with classes and not with structs.
 
 Each class can only have a single deinitializer.
 
 */
