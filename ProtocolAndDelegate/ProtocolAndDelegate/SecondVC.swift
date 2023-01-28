//
//  Second.swift
//  ProtocolAndDelegate
//
//  Created by CodeWithAnand10 on 21/01/23.
//

import UIKit

protocol FirstVCStrDelegate: AnyObject {
    func getValue(_ param: String)
    func getIntValue(_ param: Int)

}

protocol FirstVCIntDelegate: AnyObject {
    func getValue(_ param: String)
    func getIntValue(_ param: Int)
}

//MARK: -  Protocol Composition


protocol SomeProtocol: FirstVCStrDelegate, FirstVCIntDelegate {
}


class SecondVC: UIViewController {

    @IBOutlet weak var textValue: UITextField!
    
     weak var delegate: SomeProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func goToFirstScene(_ sender: UIButton) {
        delegate?.getValue("sndndd")
        delegate?.getIntValue(2)
        self.dismiss(animated: true)
    }
    
}



//struct Test {
//
//}
//
//enum Demo {
//}
