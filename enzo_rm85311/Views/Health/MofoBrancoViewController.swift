//
//  MofoBrancoViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 05/06/23.
//

import UIKit

class MofoBrancoViewController: UIViewController {
    @IBOutlet weak var MofoBrancoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MofoBrancoView.layer.borderWidth = 1
        MofoBrancoView.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
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
