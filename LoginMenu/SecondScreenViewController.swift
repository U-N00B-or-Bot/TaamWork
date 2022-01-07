//
//  SecondScreenViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 31.12.2021.
//

import UIKit

class SecondScreenViewController: UIViewController {
    var abc: String?
 
    @IBOutlet weak var sevondLabel: UILabel!
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
        label.text = String(ArrayPerson.shared.array.count)
        sevondLabel.text = abc

        
    
        



}
}
