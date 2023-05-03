//
//  SegundaViewController.swift
//  3D_MariaEduarda_29
//
//  Created by COTEMIG on 26/04/23.
//

import UIKit

class SegundaViewController: UIViewController {
    
    var estado: Estado? = nil

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblUF: UILabel!
    @IBOutlet weak var lblCapital: UILabel!
    @IBOutlet weak var lblHabitantes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let item = estado {
                lblTitulo.text = item.UF
                lblNome.text = item.nome
                lblCapital.text = item.capital
                lblHabitantes.text = item.habitantes
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
