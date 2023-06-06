//
//  GlobalViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 01/06/23.
//

import UIKit

class HealthViewController: UIViewController {
    
    
    @IBOutlet weak var Alimentotxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // This line dismisses the keyboard
        self.view.endEditing(true)
    }
    
    @IBAction func btnBuscar(_ sender: Any) {
        guard let alimento = Alimentotxt.text, !alimento.isEmpty else {
            let alert = UIAlertController(title: "Erro", message: "Por favor, preencha o campo de alimento.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        if alimento.lowercased() == "tomate" {
            performSegue(withIdentifier: "SegueTelaTomate", sender: nil)
        } else if alimento.lowercased() == "cenoura" {
            performSegue(withIdentifier: "SegueTelaCenoura", sender: nil)
        } else {
            let alert = UIAlertController(title: "Erro", message: "Alimento não encontrado.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let alimento = Alimentotxt.text {
            if segue.identifier == "SegueTelaTomate",
               let tomatoVC = segue.destination as? TomateViewController {
                tomatoVC.nomeAlimento = alimento
            } else if segue.identifier == "SegueTelaCenoura",
                      let cenouraVC = segue.destination as? CenouraViewController {
                cenouraVC.nomeAlimento = alimento
            }
        }
    }
}
