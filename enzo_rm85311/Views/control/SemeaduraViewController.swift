//
//  SemeaduraViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 04/06/23.
//

import UIKit

class SemeaduraViewController: UIViewController {
    
    @IBOutlet weak var arealbl: UITextField!
    @IBOutlet weak var espacoLinhalbl: UITextField!
    @IBOutlet weak var espacoPlantalbl: UITextField!
    @IBOutlet weak var poderGerminativolbl: UITextField!
    @IBOutlet weak var pesoMilSementeslbl: UITextField!
 
    @IBOutlet weak var semente1Halbl: UITextField!
    @IBOutlet weak var sementePHalbl: UITextField!
    @IBOutlet weak var sementePm2lbl: UITextField!
    @IBOutlet weak var kgPHalbl: UITextField!
    @IBOutlet weak var kgSementelbl: UITextField!
    @IBOutlet weak var sementesHalbl: UILabel!
    @IBOutlet weak var sementesporHalbl: UILabel!
    @IBOutlet weak var sementesPorM2lbl: UILabel!
    @IBOutlet weak var kgPorSementeslbl: UILabel!
    @IBOutlet weak var kgPorHectarlbl: UILabel!
    
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        semente1Halbl.isHidden = true
        sementePHalbl.isHidden = true
        sementePm2lbl.isHidden = true
        kgSementelbl.isHidden = true
        kgPHalbl.isHidden = true
        sementesHalbl.isHidden = true
        sementesporHalbl.isHidden = true
        sementesPorM2lbl.isHidden = true
        kgPorSementeslbl.isHidden = true
        kgPorHectarlbl.isHidden = true
        resultView.isHidden = true
        resultView.layer.borderWidth = 1
        resultView.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func didTapView(gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func btnCalcular(_ sender: Any) {
        guard let area = arealbl.text, !area.isEmpty,
              let espacoLinha = espacoLinhalbl.text, !espacoLinha.isEmpty,
              let espacoPlanta = espacoPlantalbl.text, !espacoPlanta.isEmpty,
              let poderGerminativo = poderGerminativolbl.text, !poderGerminativo.isEmpty,
              let pesoMilSementes = pesoMilSementeslbl.text, !pesoMilSementes.isEmpty else {
            // Mostra um alerta se qualquer campo estiver vazio
            let alert = UIAlertController(title: "Erro", message: "Todos os campos devem ser preenchidos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let c = CalculoSemeadura(areaPlantada: Float(area)!,
                                 espaçamentoEntreLinha: Float(espacoLinha)!,
                                 espaçamentoEntrePlanta: Float(espacoPlanta)!,
                                 poderGerminativo: Float(poderGerminativo)!,
                                 pesoMilSementes: Float(pesoMilSementes)!)
        
        semente1Halbl.text = String(format: "%.2f", c.sementePara1Ha())
        sementePHalbl.text = String(format: "%.2f", c.sementesPorHa())
        sementePm2lbl.text = String(format: "%.2f", c.sementesPorMetroQuadrado())
        kgSementelbl.text = String(format: "%.2f", c.kgDeSementes())
        kgPHalbl.text = String(format: "%.2f", c.kgPorHa())
        
        // Mostrar campos de texto após o cálculo
        semente1Halbl.isHidden = false
        sementePHalbl.isHidden = false
        sementePm2lbl.isHidden = false
        kgSementelbl.isHidden = false
        kgPHalbl.isHidden = false
        sementesHalbl.isHidden = false
        sementesporHalbl.isHidden = false
        sementesPorM2lbl.isHidden = false
        kgPorSementeslbl.isHidden = false
        kgPorHectarlbl.isHidden = false
        resultView.isHidden = false
    }
}
