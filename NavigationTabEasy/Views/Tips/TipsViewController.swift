//
//  ProfileViewController.swift
//  NavigationTabEasy
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
        firstView.layer.borderColor = UIColor.cyan.cgColor
        secondView.layer.borderWidth = 1
        secondView.layer.borderColor = UIColor.cyan.cgColor
        thridView.layer.borderWidth = 1
        thridView.layer.borderColor = UIColor.cyan.cgColor
        fourthView.layer.borderWidth = 1
        fourthView.layer.borderColor = UIColor.cyan.cgColor
        
    }
    


}
