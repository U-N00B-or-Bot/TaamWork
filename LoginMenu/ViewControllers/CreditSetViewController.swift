//U-N00B-or-Bot

import UIKit

class CreditSetViewController: UIViewController {
    static var shared = CreditSetViewController()
    
    
    @IBOutlet weak var creditSum: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var returnSum: UILabel!
    
    @IBOutlet weak var moneySlider: UISlider!
    @IBOutlet weak var timeSlider: UISlider!
    
    @IBOutlet weak var getBtn: UIButton!
    
    var day = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic4")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        creditSum.text = " \(String(Int(moneySlider.value))) ₽"
        timeLabel.text = String(Int(timeSlider.value))
        returnSum.text = "\(String(money + (((money/100)*2)*days))) ₽"
       
        getBtn.layer.cornerRadius = 10
    }
    
    @IBAction func moneySliderAction() {
        let roundedValue = round(moneySlider.value / 500) * 500
        moneySlider.value = roundedValue
        creditSum.text = " \(String(Int(moneySlider.value))) ₽"
        
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        returnSum.text = "\(String(money + (((money/100)*2)*days))) ₽"
        day = days
        
    }
    
    
    @IBAction func timeSliderAction() {
        let days = Int(timeSlider.value)
        let money = Int(moneySlider.value)
        timeLabel.text = String(Int(timeSlider.value))
        returnSum.text = "\(String(money + (((money/100)*2)*days))) ₽"
        day = days
    }
    
    
    @IBAction func getCreditBtn() {
        if SecurityMoney.shared.security == true{
            let allertController = UIAlertController(title: "Запрещено!",
                                                     message: "Сначала погасите текущий займ",
                                                     preferredStyle: .alert)
            let action = UIAlertAction(title: "Ок", style: .default) { action in }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        }else {
            SecurityMoney.shared.security = true
            SecurityMoney.shared.cancelShowAlert = false
        }
    }
    @IBAction func lookCreditBtnPressed() {
        SecurityMoney.shared.cancelShowAlert = true
        
        if SecurityMoney.shared.security == false{
            let allertController = UIAlertController(title: "Займов не обнаружено",
                                                     message: "Оформите займ, чтобы смотреть информацию о займах",
                                                     preferredStyle: .alert)
            let action = UIAlertAction(title: "Хорошо", style: .default) { action in }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let historyVC = segue.destination as? HistoryViewController else { return }
        historyVC.sumOfLoanText = creditSum.text ?? ""
        historyVC.numberOfDaysINT = day
        historyVC.refundAmountText = returnSum.text ?? ""
    }
}
