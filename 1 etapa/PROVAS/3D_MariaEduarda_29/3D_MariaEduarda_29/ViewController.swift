//
//  ViewController.swift
//  3D_MariaEduarda_29
//
//  Created by COTEMIG on 26/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    var lista: [Estado] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = Estado(nome: "jennifer", UF: "MG", capital: "belo horizonte", habitantes: "100")
        let item2 = Estado(nome: "lisa", UF: "MG", capital: "belo horizonte", habitantes: "100")
        let item3 = Estado(nome: "courteney", UF: "MG", capital: "belo horizonte", habitantes: "100")
        let item4 = Estado(nome: "david", UF: "MG", capital: "belo horizonte", habitantes: "100")
        let item5 = Estado(nome: "hopper", UF: "MG", capital: "belo horizonte", habitantes: "100")
        
        lista.append(item1)
        lista.append(item2)
        lista.append(item3)
        lista.append(item4)
        lista.append(item5)
        
        TableView.dataSource = self
        TableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell01" ) {
            
            let item =  lista[indexPath.row]
            cell.textLabel?.text = item.nome
            cell.detailTextLabel?.text = item.UF
            cell.detailTextLabel?.text = item.capital
            cell.detailTextLabel?.text = item.habitantes
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = lista[indexPath.row]
        performSegue(withIdentifier: "GoToView2", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let item = sender as? Estado,
           let vc = segue.destination as? SegundaViewController {
            vc.estado = item
        }
    }
    
}

struct Estado {
        var nome: String
        var UF: String
        var capital: String
        var habitantes: String
}

