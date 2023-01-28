
import Foundation


//MARK: - Property Observer didSet and willSet

struct Fitness {
    var totalCalorie: Double {
        didSet {
            sendMessageToClient()
        }
        
        willSet (updatedTotalCalorie) {
            if updatedTotalCalorie >= 2200 {
                sendMessageToDietician()
            }
        }
    }
    
    init(totalCalorie: Double) {
        self.totalCalorie = totalCalorie
    }
    
    mutating func addCalorie(calorie: Double) {
        self.totalCalorie += calorie
        //sendMessageToClient()
    }
    
    mutating func reduceCalorie(calorie: Double) {
        self.totalCalorie -= calorie
        //sendMessageToClient()
    }
    
    func sendMessageToClient() {
        print("You daily calorie is modified by you dietician: \(totalCalorie)")
    }
    
    func sendMessageToDietician() {
        print("Your client is taking more than given totalcalorie.Please notify him/her")
    }
}

var dietCian = Fitness(totalCalorie: 2000)
dietCian.addCalorie(calorie: 500)

/*class Fitness {
    var totalCalorie: Double {
        didSet {
            sendMessageToClient()
        }
        
        willSet (updatedTotalCalorie) {
            if updatedTotalCalorie >= 2200 {
                sendMessageToDietician()
            }
        }
    }
    
    init(totalCalorie: Double) {
        self.totalCalorie = totalCalorie
    }
    
    func addCalorie(calorie: Double) {
        self.totalCalorie += calorie
        //sendMessageToClient()
    }
    
    func reduceCalorie(calorie: Double) {
        self.totalCalorie -= calorie
        //sendMessageToClient()
    }
    
    func sendMessageToClient() {
        print("You daily calorie is modified by you dietician: \(totalCalorie)")
    }
    
    func sendMessageToDietician() {
        print("Your client is taking more than given totalcalorie.Please notify him/her")
    }
}

let dietCian = Fitness(totalCalorie: 2000)
dietCian.addCalorie(calorie: 100)
dietCian.addCalorie(calorie: 500)
*/
