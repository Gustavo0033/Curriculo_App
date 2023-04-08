//
//  AdicionarViewController.swift
//  Curriculo
//
//  Created by Gustavo Mendonca on 04/04/23.
//

import UIKit

class AdicionarViewController: UIViewController {
    
    
    @IBOutlet weak var CampoLista: UITextField!
    
    @IBAction func btnAdicionarLista(_ sender: Any) {
        
        if let textDigitado = CampoLista.text{
            let tarefa = TarefasUserDefaults()
            tarefa.salvar(tarefa: textDigitado)
            CampoLista.text = ""
            
            
            let dados = tarefa.listar()
            print(dados)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
