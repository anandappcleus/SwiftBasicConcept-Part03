//
//  ViewController.swift
//  AccessControl
//
//  Created by Anand Pandey on 12/01/23.
//
import UIKit
import Framework

/*
 Access Levels
 Swift provides five different access levels for entities within your code. These access levels are relative to the source file in which an entity is defined, and also relative to the module that source file belongs to.

 //MARK: - Open & Public
 
 Enable an entity to be used outside the defining module (target/framework). You typically use open or publicaccess when specifying the public interface to a framework.

 However, open access applies only to classes and class members, and it differs from publicaccess as follows:

 open classes and class members can be subclassed and overridden both within and outside the defining module (target/framework).
 public classes and class members can only be subclassed and overridden within the defining module (target/framework).

 //MARK: - Internal

 Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure.

 //MARK: - File-private

 File-private access restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

 //MARK: - Private

 Private access restricts the use of an entity to the enclosing declaration, and to extensions of that declaration that are in the same file. Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.

 Open access is the highest (least restrictive) access level and private access is the lowest (most restrictive) access level.
 
 */

class AccessSpecifier: OutsideModule {
    
     fileprivate func isAccessible() {
       print("isAccessible")
    }
    
    override func log(message: String) {
        
    }
    
    
}


extension AccessSpecifier {
    func checkInsideExtension() {
        //let o = AccessSpecifier()
        //o.isAccessible()
        self.isAccessible()
    }
}


class AnotherInSameFile {
    func check() {
       let obj = AccessSpecifier()
        obj.isAccessible()
    }
}
