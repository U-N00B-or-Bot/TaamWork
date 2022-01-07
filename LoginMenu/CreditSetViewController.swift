//U-N00B-or-Bot

import UIKit

class CreditSetViewController: UIViewController {
    @IBOutlet weak var creditSum: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var moneySlider: UISlider!
    @IBOutlet weak var timeSlider: UISlider!
    
    @IBOutlet weak var returnSum: UILabel!
    
    @IBOutlet weak var moneyTF: UITextField!
    @IBOutlet weak var timeTF: UITextField!
    
    @IBOutlet weak var getBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        let allertController = UIAlertController(title: "Поздравляем!", message: "Займ успешно оформлен, не забудьте вернуть во время!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Хорошо", style: .default) { action in
                        }
                        allertController.addAction(action)
                        self.present(allertController, animated: true, completion: nil)
    
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
