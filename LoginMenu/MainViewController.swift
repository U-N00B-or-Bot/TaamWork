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
        registr.layer.cornerRadius = 10
        enter.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
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
