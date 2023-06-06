//
//  OppeningViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 01/06/23.
//

import UIKit

class InfosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func OpenProposta(_ sender: Any) {
        performSegue(withIdentifier: "Infos2Proposta", sender: nil)
    }
    
    @IBAction func OpenTime(_ sender: Any) {
        performSegue(withIdentifier: "Infos2Time", sender: nil)
    }
}
