//
//  RequeimaReadMoreViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 05/06/23.
//

import UIKit

class RequeimaReadMoreViewController: UIViewController {

    @IBOutlet weak var requeimaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        requeimaView.layer.borderWidth = 1
        requeimaView.layer.borderColor = UIColor.white.cgColor
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
