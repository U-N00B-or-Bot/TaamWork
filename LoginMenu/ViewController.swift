//
//  ViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 31.12.2021.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var enter: UITextField!
    @IBOutlet weak var name: UITextField!
    var abcd: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
 
    
  /*

    @IBAction func btn() {
          let namae = Person.init(name: name.text!)
        
        if ArrayPerson.shared.array.count == 0 {
            ArrayPerson.shared.array.append(namae)
        } else {
        
        
        for person in ArrayPerson.shared.array {
            if namae == person{
                let allertController = UIAlertController(title: "Нельзя", message: "Такой пользователь уже есть", preferredStyle: .alert)
                                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                                }
                                allertController.addAction(action)
                                self.present(allertController, animated: true, completion: nil)
            } else {
                ArrayPerson.shared.array.append(namae)
            }
        
        }
        }
        
        
    }
    
    
    
        
    @IBAction func enterbtn(_ sender: Any) {
        for person in ArrayPerson.shared.array {
            if person.name == enter.text {
                abcd = enter.text
            } else {abcd = "Такого юзера нет!"}
        }

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC = segue.destination as! SecondScreenViewController
        newVC.abc = "Hello, \(abcd ?? "need Debug")!"    }

}
*/
    
}
