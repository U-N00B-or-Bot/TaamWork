//
//  HistoryViewController.swift
//  LoginMenu
//
//  Created by Alina Sokolova on 9.01.22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var sumOfLoan: UILabel!
    
    @IBOutlet weak var numberOfDays: UILabel!
    
    @IBOutlet weak var refundAmount: UILabel!
    
    var sumOfLoanText = String()
    var numberOfDaysText = String()
    var refundAmountText = String()
    var days = "дней"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic6")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        sumOfLoan.text = sumOfLoanText
        numberOfDays.text = numberOfDaysText + " " + days
        refundAmount.text = refundAmountText
        
    }
}



    
    

