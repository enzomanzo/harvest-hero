//
//  FertilizanteViewController.swift
//  NavigationTabEasy
//
//  Created by Enzo Manzo Carelli on 02/06/23.
//

import UIKit

class FertilizanteViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nitrogenioTXT: UITextField!
    @IBOutlet weak var fosforoTXT: UITextField!
    @IBOutlet weak var potassioTXT: UITextField!
    @IBOutlet weak var quantidadeTXT: UITextField!
    @IBOutlet weak var dapTXT: UITextField!
    @IBOutlet weak var uTXT: UITextField!
    @IBOutlet weak var mopTXT: UITextField!
    @IBOutlet weak var daplbl: UILabel!
    @IBOutlet weak var ulbl: UILabel!
    @IBOutlet weak var moplbl: UILabel!
    
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        daplbl.isHidden = true
        ulbl.isHidden = true
        moplbl.isHidden = true
        resultView.isHidden = true
        resultView.layer.borderWidth = 1
        resultView.layer.borderColor = UIColor.white.cgColor

        // Define self as the delegate for your UITextField
        nitrogenioTXT.delegate = self
        fosforoTXT.delegate = self
        potassioTXT.delegate = self
        quantidadeTXT.delegate = self
        dapTXT.delegate = self
        uTXT.delegate = self
        mopTXT.delegate = self
    }
    
    // Dismiss keyboard when touch outside of UITextField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // Dismiss keyboard when return/done key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func btnCalcular(_ sender: Any) {
        guard let nitrogenio = nitrogenioTXT.text, !nitrogenio.isEmpty,
              let fosforo = fosforoTXT.text, !fosforo.isEmpty,
              let potassio = potassioTXT.text, !potassio.isEmpty,
              let quantidade = quantidadeTXT.text, !quantidade.isEmpty else {
            // Mostra um alerta se qualquer campo estiver vazio
            let alert = UIAlertController(title: "Erro", message: "Todos os campos devem ser preenchidos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
    
        let c = CalculoFert()
        c.nitrogenio = Float(nitrogenio)
        c.fosforo = Float(fosforo)
        c.potassio = Float(potassio)
        c.quantidade = Float(quantidade)

        dapTXT.text = "\(c.resultadoDAP())"
        uTXT.text = "\(c.resultadoU())"
        mopTXT.text = "\(c.resultadoMOP())"
        
        daplbl.isHidden = false
        ulbl.isHidden = false
        moplbl.isHidden = false
        resultView.isHidden = false
    }
}
