//
//  TableViewController.swift
//  Curriculo
//
//  Created by Gustavo Mendonca on 04/04/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let tarefa = TarefasUserDefaults()
            tarefa.remover(indice: indexPath.row)
            atualizarListaTarefa()
        }

    }
    
    func atualizarListaTarefa(){
        let tarefa = TarefasUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefa()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulas = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celulas.textLabel?.text = tarefas[indexPath.row]

        return celulas
    }
    


}
