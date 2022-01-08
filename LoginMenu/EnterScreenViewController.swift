//
//  EnterScreenViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 01.01.2022.
//

import UIKit

class EnterScreenViewController: UIViewController {

    @IBOutlet weak var btnEnter: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UITextField!
    var hello: String?
    var currentPerson: Person?
    var ok = false
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
   
            
        
        viewControllers! .forEach{
            if let navVC = $0 as? UINavigationController {
                let welcomeVC = navVC.topViewController as! WelcomeViewController
                welcomeVC.hello = hello
                welcomeVC.currentPerson = currentPerson
            } 
        }
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        login.returnKeyType = .next
        password.returnKeyType = .done
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.login.delegate = self
        self.password.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic3")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        btnEnter.layer.cornerRadius = 10
       
    }
    
    
    


    @IBAction func btnEnterPress() {
        var fullname = ""
        let personaj = Person(name: "", surname: "",fatherName: "", login: login.text!, password: password.text!)
        for person in ArrayPerson.shared.array {
            if person == personaj{
                currentPerson = person
                ok = true
                fullname = "Здравствуйте, \n \(person.name) \(person.fatherName)!"
                login.text = ""
                password.text = ""
            } else if person.login == personaj.login && password.text != ""{
                let allertController = UIAlertController(title: "Ошибка", message: "Неверный пароль", preferredStyle: .alert)
                                    let action = UIAlertAction(title: "Ок", style: .default) { action in
                                    }
                                    allertController.addAction(action)
                                    self.present(allertController, animated: true, completion: nil)
                
            }
            
        }
        if ok {
            hello = fullname
        }else if login.text == "" || password.text == ""{
            let allertController = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
                                let action = UIAlertAction(title: "Ок", style: .default) { action in
                                }
                                allertController.addAction(action)
                                self.present(allertController, animated: true, completion: nil)
        }
        else {
            let allertController = UIAlertController(title: "Ошибка", message: "Неправильное имя пользователя/ незарегистрированный пользователь", preferredStyle: .alert)
                                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                                }
                                allertController.addAction(action)
                                self.present(allertController, animated: true, completion: nil)            }
        
        
    }
    

}

extension EnterScreenViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == login {
            password.becomeFirstResponder()
        } else {
            btnEnterPress()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
}
  
    

