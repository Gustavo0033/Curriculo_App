//
//  MainController.swift
//  Curriculo
//
//  Created by Gustavo Mendonca on 02/04/23.
//

import UIKit

public class MainHomeController: UIViewController{
    
    
    

    @IBAction func salvarNotas(_ sender: Any) {
        
        if let texto = NotasBody.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    @IBOutlet weak var NotasBody: UITextView!
    let chave = "minhaAnotacoes"
    
        func recuperarNotas() -> String{
            if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
                return textoRecuperado as! String
            }
            return ""
        }
    
    public override func viewDidLoad() {
        NotasBody.text = recuperarNotas()
        
        
        
    }
    
    
     public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
    
    
}



