//
//  ProfileViewController.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 01/06/23.
//

import UIKit

class TipsViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thridView: UIView!
    @IBOutlet weak var fourthView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.layer.borderWidth = 1
        firstView.layer.borderColor = UIColor.systemCyan.cgColor
        secondView.layer.borderWidth = 1
        secondView.layer.borderColor = UIColor.systemCyan.cgColor
        thridView.layer.borderWidth = 1
        thridView.layer.borderColor = UIColor.systemCyan.cgColor
        fourthView.layer.borderWidth = 1
        fourthView.layer.borderColor = UIColor.systemCyan.cgColor
        
    }
    


}
