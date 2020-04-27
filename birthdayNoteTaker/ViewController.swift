//
//  ViewController.swift
//  birthdayNoteTaker
//
//  Created by Andres Flores on 4/27/20.
//  Copyright © 2020 Andres Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let myName = UserDefaults.standard.object(forKey: "name") as? String {
            nameLabel.text = myName
        } else {
            nameLabel.text = "Name: "
        }
        if let myBirthday = UserDefaults.standard.object(forKey: "birthday") as? String {
            birthdayLabel.text = myBirthday
        } else {
            birthdayLabel.text = "Birhtday: "
        }
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
}

