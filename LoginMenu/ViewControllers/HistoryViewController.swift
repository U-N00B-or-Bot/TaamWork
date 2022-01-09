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
    var numberOfDaysINT = Int()
    var refundAmountText = String()
    var days = "дней"
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic6")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        if numberOfDaysINT == 1 || numberOfDaysINT == 21 {
            days = "день"
        } else if numberOfDaysINT == 2 || numberOfDaysINT == 3 || numberOfDaysINT == 4 || numberOfDaysINT == 22 || numberOfDaysINT == 23 || numberOfDaysINT == 24 {
            days = "дня"
        }
        sumOfLoan.text = sumOfLoanText
        numberOfDays.text = "\(numberOfDaysINT) \(days)"
        refundAmount.text = refundAmountText
        
    }
}



    
    

