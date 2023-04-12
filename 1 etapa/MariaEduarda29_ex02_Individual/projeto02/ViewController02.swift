//
//  ViewController02.swift
//  projeto02
//
//  Created by COTEMIG on 27/03/23.
//

import UIKit

class ViewController02: UIViewController {

    var email : Dados? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblemail.text = email?.email
        lblassunto.text = email?.ass
        lblmens.text =  email?.mens
        // Do any additional setup after loading the view.
    }
    @IBOutlet var lblemail: UILabel!
    @IBOutlet var lblassunto: UILabel!
    @IBOutlet var lblmens: UITextView!
   
}
