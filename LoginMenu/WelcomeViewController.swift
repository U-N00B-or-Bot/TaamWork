//
//  WelcomeViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 01.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    var hello: String?
   
    
    @IBOutlet weak var labelHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHello.text = hello
        // Do any additional setup after loading the view.
    }
    
    
    

}
