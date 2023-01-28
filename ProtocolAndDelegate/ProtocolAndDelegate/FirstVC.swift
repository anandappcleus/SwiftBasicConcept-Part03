//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by CodeWithAnand10 on 21/01/23.
//

import UIKit


class FirstVC: UIViewController {

    @IBOutlet weak var frstLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var obj = IntMath()
        print(obj.multiplyOpration(10, 5))
        
        var obj2 = DoubleMath()
        print(obj2.multiplyOpration(12.21, 5.8))

    }
    

    @IBAction func goToSecondView(sender: UIButton) {
         let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return}
        vc.delegate = self
        self.present(vc, animated: true)
    }


}



extension FirstVC: SomeProtocol {
    func getValue(_ param: String) {
    }
    
    func getIntValue(_ param: Int) {
    }
}

//MARK: - Associated Protocol

protocol MathCalculationProtocol: AnyObject {
    associatedtype T
    func multiplyOpration(_ a: T, _ b: T) -> T
}


class IntMath: MathCalculationProtocol {
    
    typealias T = Int
    
    func multiplyOpration(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
}

class DoubleMath: MathCalculationProtocol {
    
    typealias T = Double
    
    func multiplyOpration(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}
