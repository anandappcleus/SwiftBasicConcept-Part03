
import Foundation

//MARK: - Class and Static function and variable

struct Vehicle {
    
    var name: String
    
    static var model = "1AS"
    class  var color: String {
        return  "red"
    }
    
    init(name: String) {
        self.name = name
    }
    
    func getVname() -> String {
        return self.name
    }
    
    static func getVehicleType() {
        print("R1 5")
    }
    
    class func getVehicleNum() {
        print("1222")
    }
    
}

var obj1 = Vehicle(name: "bike")
print(obj1.getVname())

Vehicle.getVehicleType()
Vehicle.getVehicleNum()

class DemoVehicle: Vehicle {
    override func getVname() -> String {
        
    }

    override class func getVehicleNum() {
        
    }
}

protocol DemoVehicleType {
    func getBike()
    static func getCar()
    static func getLorry()
}

