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
    
    @IBOutlet weak var numberOfCardLabel: UILabel!
    
    var countLabel = UILabel()
    var card: String?
    
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
        
        if SecurityMoney.shared.security == false {
            sumOfLoan.text = "0"
            numberOfDays.text = "0"
            refundAmount.text = "0"
        } else {
            
            if SecurityMoney.shared.cancelShowAlert == false {
            let allertController = UIAlertController(title: "Поздравляем!",
                                                     message: "Займ одобрен!",
                                                     preferredStyle: .alert)
            let action = UIAlertAction(title: "Спасибо", style: .default) { action in }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
            }
            
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
    @IBAction func returnMoney() {
        if SecurityMoney.shared.security == false {
            let allertController = UIAlertController(title: "Все хорошо",
                                                     message: "У вас нет займов",
                                                     preferredStyle: .alert)
            let action = UIAlertAction(title: "Ок", style: .default) { action in }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        } else {
        
        
        
        let alert = UIAlertController(title: "Внимание", message: "Для погашения займа введите номер карты, с которой будут списаны деньги", preferredStyle: .alert)
        
        
        alert.addTextField { field in
            field.placeholder = "Number of card"
            field.delegate = self
            field.returnKeyType = .done
            field.keyboardType = .numberPad
            self.countLabel.text = "0/16"
            self.countLabel.font = UIFont.systemFont(ofSize: 10)
            self.countLabel.textColor = .black
            self.countLabel.textAlignment = .left
            field.rightView = self.countLabel
            field.rightViewMode = .always
            field.rightViewRect(forBounds: CGRect(x: -10, y: 0, width: 30, height: 30))
            
            alert.addAction(UIAlertAction(title: "Ок", style: .default, handler: { _ in
                SecurityMoney.shared.security = false
                self.sumOfLoan.text = "0"
                self.numberOfDays.text = "0"
                self.refundAmount.text = "0"
                self.numberOfCardLabel.text = "Your number of card "
                if let text = alert.textFields?[0].text {
                    self.card = text
                    self.numberOfCardLabel.text = self.numberOfCardLabel.text! + self.card!
                } else {
                    self.card = nil
                }
                self.countLabel.text = "0/16"
                
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
                self.countLabel.text = "0/16"
            }))
            
            self.present(alert, animated: true, completion: nil)
        }

        }
    }
}

extension HistoryViewController: UITextFieldDelegate {
    func textField(_ field: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = field.text ?? ""
        guard let stringsRange = Range(range, in: currentText) else { return false }
        let maxLetters = 16
        let updatedText = currentText.replacingCharacters(in: stringsRange, with: string)
        if updatedText.count > maxLetters {
            UIView.animate(withDuration: 0.1, animations: {
                self.countLabel.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.countLabel.transform = CGAffineTransform.identity
                })
            })
            return false
        } else {
            countLabel.text = "\(updatedText.count)/\(maxLetters)"
            return true
        }
    }
}


    
    

