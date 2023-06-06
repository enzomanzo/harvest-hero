//
//  CenouraViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 05/06/23.
//

import UIKit

class CenouraViewController: UIViewController {

    var nomeAlimento: String?
    
    @IBOutlet weak var nomeAlimentolbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nomeAlimentolbl.text = nomeAlimento
        // Do any additional setup after loading the view.
    }
    

}
