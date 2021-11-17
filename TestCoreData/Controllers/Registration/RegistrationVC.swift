//
//  ViewController.swift
//  TestCoreData
//
//  Created by Mobark Alseif on 10/04/1443 AH.
//

import UIKit
import CoreData

class RegistrationVC: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let context = PersistentStorage.shared.context
    let cdPerson = CDPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func skip(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toDetals", sender: nil)
    }
    @IBAction func singUp(_ sender: UIButton) {
        
        if saveCoreData(name: userName.text ?? "", age: password.text ?? "") {
            performSegue(withIdentifier: "toDetals", sender: nil)
        } else {
            print("please try Again!!")
        }
        
    }
    func saveCoreData(name:String,age:String) -> Bool {
        
        if name == "" || age  == "" { return false }
        guard let age: Int16 = Int16(age) else {return false}
        let person = Person(name: name, age: age)
        
        // Create Database
        cdPerson.create(person: person)
        
        return true
        
    }
}

