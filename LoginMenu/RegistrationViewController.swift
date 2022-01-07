//
//  RegistrationViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 31.12.2021.
//

import UIKit

class RegistrationViewController: UIViewController {

    
    @IBOutlet weak var surname: UITextField!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var fatherName: UITextField!
    
    @IBOutlet weak var login: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    func clear() {
        surname.text = ""
        name.text = ""
        fatherName.text = ""
        login.text = ""
        password.text = ""
    }
    
    @IBOutlet weak var btn: UIButton!
    
    func btnOk() {
        btn.isEnabled = true
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        btn .layer.cornerRadius = 10
        btn.isEnabled = false
        
        
    }
    
    override func viewWillLayoutSubviews() {
        if surname.text != "" && name.text != "" && fatherName.text != "" && login.text != "" && password.text != "" {
            btn.isEnabled = true
        }
        
    }

    @IBAction func registrationBtnPressed() {
        
        let namae = Person(name: name.text!, surname: surname.text!, fatherName: fatherName.text!, login: login.text!, password: password.text!)
        
        
        for person in ArrayPerson.shared.array {
            if person.login == login.text {
                let allertController = UIAlertController(title: "Ошибка", message: "Такой логин уже существует", preferredStyle: .alert)
                                let action = UIAlertAction(title: "Отмена", style: .cancel) { action in
                                }
                                allertController.addAction(action)
                                self.present(allertController, animated: true, completion: nil)
                return
            }}
            
            if surname.text == "" || name.text == "" || fatherName.text == "" || login.text == "" || password.text == "" {
                let allertController = UIAlertController(title: "Ошибка", message: "Необходимо заполнить все поля для регистрации", preferredStyle: .alert)
                                let action = UIAlertAction(title: "Понятно", style: .cancel) { action in
                                }
                                allertController.addAction(action)
                                self.present(allertController, animated: true, completion: nil)
                return
            }
            ArrayPerson.shared.array.append(namae)
        let allertController = UIAlertController(title: "Успешно!", message: "Вы зарегистрировались!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Хорошо", style: .default) { action in
                        }
                        allertController.addAction(action)
                        self.present(allertController, animated: true, completion: nil)
        clear()
        
        
            
        }
        
        
        
        
        
       /*
      
      if ArrayPerson.shared.array.count == 0 {
          if surname.text == "" || name.text == "" || fatherName.text == "" || login.text == "" || password.text == "" {
              let allertController = UIAlertController(title: "Нельзя", message: "Заполните все поля", preferredStyle: .alert)
                              let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                              }
                              allertController.addAction(action)
                              self.present(allertController, animated: true, completion: nil)
          } else {
              ArrayPerson.shared.array.append(namae) }
      } else {
          
          
          if surname.text == "" || name.text == "" || fatherName.text == "" || login.text == "" || password.text == "" {
              let allertController = UIAlertController(title: "Нельзя", message: "Заполните все поля", preferredStyle: .alert)
                              let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                              }
                              allertController.addAction(action)
                              self.present(allertController, animated: true, completion: nil)
          } else {
      
      
      for person in ArrayPerson.shared.array {
          if login.text == person.login{
              let allertController = UIAlertController(title: "Нельзя", message: "Такой пользователь уже есть", preferredStyle: .alert)
                              let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                              }
                              allertController.addAction(action)
                              self.present(allertController, animated: true, completion: nil)
              clear()
              return
          } else {
              ArrayPerson.shared.array.append(namae)
          }
      
      }
          }}
        
        
        
        let allertController = UIAlertController(title: "Успешно", message: String(ArrayPerson.shared.array.count), preferredStyle: .alert)
        let action = UIAlertAction(title: "Хорошо", style: .default) { action in
                        }
                        allertController.addAction(action)
                        self.present(allertController, animated: true, completion: nil)
                        
        
                    
        clear()
   
    */

}
    

