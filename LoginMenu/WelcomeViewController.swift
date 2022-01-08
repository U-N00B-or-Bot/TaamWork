//
//  WelcomeViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 01.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    var hello: String?
    var currentPerson: Person?
   
    
    @IBOutlet weak var labelHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic5")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        labelHello.text = hello
        
    }
    
    @IBAction func deleteAction() {
       
        
        
        let deletePerson = ArrayPerson.shared.array.firstIndex(of: currentPerson!)
        
        ArrayPerson.shared.array.remove(at: deletePerson!)
       
        
    }
    
    

}
