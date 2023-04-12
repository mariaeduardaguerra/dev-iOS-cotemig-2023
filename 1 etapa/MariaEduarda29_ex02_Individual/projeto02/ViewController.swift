//
//  ViewController.swift
//  projeto02
//
//  Created by COTEMIG on 27/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var txtPara:UITextField!
    @IBOutlet var txtAss: UITextField!
    @IBOutlet var txtMens: UITextView!
    
    @IBAction func btnEnviar(_ sender: Any) {
        
        if let email = txtPara.text, let ass = txtAss.text, let Mens = txtMens.text,
           email.count > 0 && ass.count > 0 && Mens.count > 0 {
            
            let mensagem = Dados (email: email, ass: ass, mens: Mens)
            performSegue(withIdentifier: "tela02", sender: mensagem)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let parametro = sender as? Dados,
           let v = segue.destination as? ViewController02{
            v.email = parametro
        }
    }
}

struct Dados {
    var email: String
    var ass: String
    var mens: String
}
