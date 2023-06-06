//
//  NewViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 05/06/23.
//

import UIKit

class TomateViewController: UIViewController {

    var nomeAlimento: String?
    
    @IBOutlet weak var MofoBrancoView: UIView!
    @IBOutlet weak var SeptorioseView: UIView!
    @IBOutlet weak var RequeimaView: UIView!
    @IBOutlet weak var nomeAlimentolbl: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeAlimentolbl.text = nomeAlimento

        
        RequeimaView.layer.borderWidth = 1
        RequeimaView.layer.borderColor = UIColor.white.cgColor
        SeptorioseView.layer.borderWidth = 1
        SeptorioseView.layer.borderColor = UIColor.white.cgColor
        MofoBrancoView.layer.borderWidth = 1
        MofoBrancoView.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
    }
    


}
