//U-N00B-or-Bot

import UIKit

class CreditSetViewController: UIViewController {
    @IBOutlet weak var creditSum: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var moneySlider: UISlider!
    @IBOutlet weak var timeSlider: UISlider!
    
    @IBOutlet weak var returnSum: UILabel!
    
    
    @IBOutlet weak var getBtn: UIButton!
    
    var zaim: Loan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic4")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        creditSum.text = " \(String(Int(moneySlider.value))) ₽"
        
        timeLabel.text = String(Int(timeSlider.value))
        // Do any additional setup after loading the view.
        getBtn.layer.cornerRadius = 10
    }
    
    @IBAction func moneySliderAction() {
        let roundedValue = round(moneySlider.value / 500) * 500
        moneySlider.value = roundedValue
        creditSum.text = " \(String(Int(moneySlider.value))) ₽"
        
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        returnSum.text = "\(String(money + (((money/100)*2)*days))) ₽"
        
        
    }
    
    
    @IBAction func timeSliderAction() {
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        timeLabel.text = String(Int(timeSlider.value))
        returnSum.text = "\(String(money + (((money/100)*2)*days))) ₽"
    }
    
    
    
   
    @IBAction func getCreditBtn() {
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        var zaim = Loan(sumOfLoan: money, numberOfDays: days, refundAmount: money + (((money/100)*2)*days))
        
        let allertController = UIAlertController(title: "Поздравляем!", message: "Займ успешно оформлен, не забудьте вернуть во время!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Хорошо", style: .default) { action in
                        }
                        allertController.addAction(action)
                        self.present(allertController, animated: true, completion: nil)
    
    }
    



}
