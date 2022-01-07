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
    var ok = false
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
   
            
        
        viewControllers! .forEach{
            if let navVC = $0 as? UINavigationController {
                let welcomeVC = navVC.topViewController as! WelcomeViewController
                welcomeVC.hello = hello
            } 
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEnter.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    
    


    @IBAction func btnEnterPress() {
        var fullname = ""
        let personaj = Person(name: "", surname: "",fatherName: "", login: login.text!, password: password.text!)
        for person in ArrayPerson.shared.array {
            if person == personaj{
                ok = true
                fullname = "Здравствуйте, \n \(person.name) \(person.fatherName)!"
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
        
        
        
        /*
        let security = Person(name: "", surname: "", fatherName: "", login: login.text!, password: password.text!)
            
        
        for person in ArrayPerson.shared.array {
            //if person.login == login.text && person.password == password.text
            if person == security{
                hello = "Здравствуйте, \(person.name) \(person.fatherName)!"}
            else {let allertController = UIAlertController(title: "Нельзя", message: person.login, preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)}
    }
        
       
        
       
        
        if login.text == "" || password.text == ""{
            let allertController = UIAlertController(title: "Нельзя", message: "ПУСТОТА ПЛОХО", preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)
            
        
        }else {
            if ArrayPerson.shared.array.count == 0 {
                let allertController = UIAlertController(title: "Нельзя", message: "Юзер не найден", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                    }
                    allertController.addAction(action)
                    self.present(allertController, animated: true, completion: nil)
            } else {
            
            
            for person in ArrayPerson.shared.array {
                //if person.login == login.text && person.password == password.text
                if person == security{
                    hello = "Здравствуйте, \(person.name) \(person.fatherName)!"}
                else {let allertController = UIAlertController(title: "Нельзя", message: person.login, preferredStyle: .alert)
                    let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                    }
                    allertController.addAction(action)
                    self.present(allertController, animated: true, completion: nil)}
            
        }
            
            
        }
        }
        
        */
        
    }
    

}
  
    

