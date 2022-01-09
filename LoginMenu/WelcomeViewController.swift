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
   
    @IBOutlet weak var delBTN: UIButton!
    
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
        var exit = false
        
        let alert = UIAlertController(title: "Внимание", message: "Вы точно хотите удалить аккаунт?", preferredStyle: .alert)
        alert.addTextField { field in
            field.placeholder = "Password"
            field.returnKeyType = .done
            field.isSecureTextEntry = true
        }
        
        
        let action = UIAlertAction(title: "Нет", style: .cancel, handler: nil)
        let scondAction = UIAlertAction(title: "Да", style: .destructive, handler: { _ in
            guard let field = alert.textFields, field.count == 1 else {
                return
            }
            let passwordField = field[0]
            guard let password = passwordField.text, !password.isEmpty else {
                return
            }
           if self.currentPerson?.password == passwordField.text {
            let deletePerson = ArrayPerson.shared.array.firstIndex(of: self.currentPerson!)
            ArrayPerson.shared.array.remove(at: deletePerson!)
            exit = true
               self.delBTN.isEnabled = false
               self.labelHello.text = "АККАУНТ УДАЛЕН, ВСЕГО ДОБРОГО!"
            }
            
        })
        alert.addAction(action)
        alert.addAction(scondAction)
        self.present(alert, animated: true, completion: nil)
        
                
        

       
        
    }
    
    

}
