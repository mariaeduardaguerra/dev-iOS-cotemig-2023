//
//  TerceiroViewController.swift
//  MariaEduarda29_MateusHenrique31
//
//  Created by COTEMIG on 22/03/23.
//

import UIKit

class TerceiroViewController: UIViewController {

    var usuario: Usuario? = nil

    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblSenha: UILabel!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        if let email = usuario?.email,
           let pass = usuario?.password {
            lblEmail.text = "E-mail: \(email)"
            lblSenha.text = "Senha: \(pass)"
        }
        
    }

}
