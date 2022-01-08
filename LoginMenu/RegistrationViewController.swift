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
    
//func btnOk() {
      //  btn.isEnabled = true
   // }
    override func viewWillAppear(_ animated: Bool) {
        name.returnKeyType = .next
        surname.returnKeyType = .next
        fatherName.returnKeyType = .next
        login.returnKeyType = .next
        password.returnKeyType = .done
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.delegate = self
        self.surname.delegate = self
        self.fatherName.delegate = self
        self.login.delegate = self
        self.password.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "pic2")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        btn .layer.cornerRadius = 10
    //btn.isEnabled = false отключил пока, но удалять не стал
        
        
    }
    
    override func viewWillLayoutSubviews() {
       // if surname.text != "" && name.text != "" && fatherName.text != "" && login.text != "" && password.text != "" {
            //btn.isEnabled = true
       // }
        
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
}
    
extension RegistrationViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchBaseNextTextField(textField)
        return true
    }
    
    func switchBaseNextTextField(_ textField: UITextField) {
        switch textField {
        case self.name:
            self.surname.becomeFirstResponder()
        case self.surname:
            self.fatherName.becomeFirstResponder()
        case self.fatherName:
            self.login.becomeFirstResponder()
        case self.login:
            self.password.becomeFirstResponder()
        default:
            registrationBtnPressed()
        }
    }
}

