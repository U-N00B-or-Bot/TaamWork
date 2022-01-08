//
//  MainViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 31.12.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var registr: UIButton!
    @IBOutlet weak var enter: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic1")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        registr.layer.cornerRadius = 10
        enter.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }


}
