//
//  SegundaViewController.swift
//  MariaEduarda29_MateusHenrique31
//
//  Created by COTEMIG on 15/03/23.
//

import UIKit

class SegundaViewController: UIViewController {

    @IBOutlet weak var lblMensagem: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {

        if let email = txtEmail.text,
        let pass = txtPassword.text,

        email.count > 9 && pass.count > 7 {

            let user = Usuario(email: email, password: pass)
            performSegue(withIdentifier: "GoToView3", sender: user)

        }
        else {

            lblMensagem.text =  "Necessário e-mail > 10 caracteres e senha > 8 caracteres!"

        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let usuario = sender as? Usuario,
           let vc = segue.destination as? TerceiroViewController {
            vc.usuario = usuario
        }
        
    }

}
