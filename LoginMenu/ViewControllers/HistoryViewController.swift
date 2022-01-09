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
        let allertController = UIAlertController(title: "Поздравляем!",
                                                 message: "Займ одобрен!",
                                                 preferredStyle: .alert)
        let action = UIAlertAction(title: "Спасибо", style: .default) { action in }
        allertController.addAction(action)
        self.present(allertController, animated: true, completion: nil)
        
        
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
    @IBAction func returnMoney() {
        let alert = UIAlertController(title: "Внимание", message: "Для погашения займа введите номер карты с которой будут списаны деньги", preferredStyle: .alert)
        
        
        alert.addTextField { field in
            field.placeholder = "Number of card"
            field.returnKeyType = .done
            
            let action = UIAlertAction(title: "Ок", style: .default) { action in }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
       
    }
}



    
    

