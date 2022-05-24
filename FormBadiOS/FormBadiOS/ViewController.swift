//
//  ViewController.swift
//  FormBadiOS
//
//  Created by Paul Adam on 1/18/20.
//  Copyright © 2020 Paul Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func submitForm(_ sender: Any) {
        errorText.isHidden = true
        if (nameInput.text == "" && emailInput.text == "") {
            errorText.text = "Error! Name and Email are Blank!"
            nameLabel.textColor = UIColor.red
            emailLabel.textColor = UIColor.red
            errorText.isHidden = false
        } else if (nameInput.text == "") {
            errorText.text = "Error! Name is Blank!"
            nameLabel.textColor = UIColor.red
            errorText.isHidden = false
        } else if (emailInput.text == "") {
            errorText.text = "Error! Email is Blank!"
            emailLabel.textColor = UIColor.red
            errorText.isHidden = false
        } else {
            errorText.text = "Success! Thanks for registering!"
            errorText.textColor = UIColor.green
            errorText.isHidden = false
        }
       // UIAccessibility.post(notification: UIAccessibility.Notification.layoutChanged, argument: self.errorText)

    }
    @IBAction func resetForm(_ sender: Any) {
        errorText.isHidden = true
        nameLabel.textColor = UIColor.black
        emailLabel.textColor = UIColor.black

    }
    

}

