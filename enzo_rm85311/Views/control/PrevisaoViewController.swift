//
//  PrevisaoViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 04/06/23.
//

import UIKit

class PrevisaoViewController: UIViewController {
    
    @IBOutlet weak var arealbl: UILabel!
    @IBOutlet weak var custolbl: UILabel!
    @IBOutlet weak var sacaprevistalbl: UILabel!
    @IBOutlet weak var sacavendalbl: UILabel!
    @IBOutlet weak var areatxt: UITextField!
    @IBOutlet weak var custotxt: UITextField!
    @IBOutlet weak var sacaprevistatxt: UITextField!
    @IBOutlet weak var sacavendatxt: UITextField!
    
    //apos calcular
    @IBOutlet weak var custosacalbl: UILabel!
    @IBOutlet weak var custosacatxt: UITextField!
    @IBOutlet weak var lucrosacalbl: UILabel!
    @IBOutlet weak var lucrosacatxt: UITextField!
    @IBOutlet weak var custohalbl: UILabel!
    @IBOutlet weak var custohatxt: UITextField!
    @IBOutlet weak var lucrohalbl: UILabel!
    @IBOutlet weak var lucrohatxt: UITextField!
    @IBOutlet weak var sacashalbl: UILabel!
    @IBOutlet weak var sacashatxt: UITextField!
    @IBOutlet weak var custototallbl: UILabel!
    @IBOutlet weak var custototaltxt: UITextField!
    @IBOutlet weak var lucrototallbl: UILabel!
    @IBOutlet weak var lucrototaltxt: UITextField!
    @IBOutlet weak var saldototallbl: UILabel!
    @IBOutlet weak var saldototaltxt: UITextField!
    
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultView.isHidden = true
        custosacalbl.isHidden = true
        custosacatxt.isHidden = true
        lucrosacalbl.isHidden = true
        lucrosacatxt.isHidden = true
        custohalbl.isHidden = true
        custohatxt.isHidden = true
        lucrohalbl.isHidden = true
        lucrohatxt.isHidden = true
        sacashalbl.isHidden = true
        sacashatxt.isHidden = true
        custototallbl.isHidden = true
        custototaltxt.isHidden = true
        lucrototallbl.isHidden = true
        lucrototaltxt.isHidden = true
        saldototallbl.isHidden = true
        saldototaltxt.isHidden = true
        resultView.layer.borderWidth = 1
        resultView.layer.borderColor = UIColor.white.cgColor
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    @objc func didTapView(gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func btncalcular(_ sender: Any) {
        guard let area = areatxt.text, !area.isEmpty,
                     let custo = custotxt.text, !custo.isEmpty,
                     let sacaprevista = sacaprevistatxt.text, !sacaprevista.isEmpty,
                     let sacavenda = sacavendatxt.text, !sacavenda.isEmpty else {

                   // Show an alert if any field is empty
                   let alert = UIAlertController(title: "Erro", message: "Todos os campos devem ser preenchidos", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   self.present(alert, animated: true, completion: nil)
                   return
               }

               let c = CalculoPrevisao(areaTotalPlantada: Float(area)!, custoPrevistoPorHectare: Float(custo)!, sacasPrevistas: Float(sacaprevista)!, valorDaSacaNaVenda: Float(sacavenda)!)

               custosacatxt.text = String(format: "%.2f", c.custoPorSaca())
               lucrosacatxt.text = String(format: "%.2f", c.lucroPorSaca())
               custohatxt.text = String(format: "%.2f", c.custoPorHa())
               lucrohatxt.text = String(format: "%.2f", c.lucroPorHa())
               sacashatxt.text = String(format: "%.2f", c.sacasGastasPorHa())
               custototaltxt.text = String(format: "%.2f", c.custosTotais())
               lucrototaltxt.text = String(format: "%.2f", c.lucroTotal())
               saldototaltxt.text = String(format: "%.2f", c.saldoTotal())
        
        resultView.isHidden = false
        custosacalbl.isHidden = false
        custosacatxt.isHidden = false
        lucrosacalbl.isHidden = false
        lucrosacatxt.isHidden = false
        custohalbl.isHidden = false
        custohatxt.isHidden = false
        lucrohalbl.isHidden = false
        lucrohatxt.isHidden = false
        sacashalbl.isHidden = false
        sacashatxt.isHidden = false
        custototallbl.isHidden = false
        custototaltxt.isHidden = false
        lucrototallbl.isHidden = false
        lucrototaltxt.isHidden = false
        saldototallbl.isHidden = false
        saldototaltxt.isHidden = false
    }
        
}
       
