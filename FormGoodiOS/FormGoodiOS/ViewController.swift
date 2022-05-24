//
//  ViewController.swift
//  FormGoodiOS
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
    @IBOutlet weak var stayUpdatedLabel: UILabel!
    @IBOutlet weak var stayUpdatedSwitch: UISwitch!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var termsText: UITextView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            nameInput.accessibilityLabel = "Name * Required"
//            nameInput.isEnabled = false
//            nameInput.text = "test"
            emailInput.accessibilityLabel = "Email * Required"
            stayUpdatedSwitch.accessibilityLabel = stayUpdatedLabel.text
            resetButton.titleLabel?.adjustsFontForContentSizeCategory = true
            registerButton.titleLabel?.adjustsFontForContentSizeCategory = true
            stayUpdatedSwitch.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            termsText.isAccessibilityElement = true // suppress final a11y inspector false positive error
            termsText.accessibilityLabel = termsText.text // suppress final a11y inspector false positive error
        }
        @IBAction func submitForm(_ sender: Any) {
            resetForm(self)
            if (nameInput.text == "" && emailInput.text == "") {
                errorText.text = "⚠ Name and Email are Blank!"
                errorText.accessibilityLabel = "Error! Name and Email are Blank!"
                nameLabel.textColor = errorText.textColor
                emailLabel.textColor = errorText.textColor
                nameLabel.text = nameLabel.text! + "⚠"
                nameInput.accessibilityLabel = "Name * Required, Invalid Entry"
                emailLabel.text = emailLabel.text! + "⚠"
                emailInput.accessibilityLabel = "Email * Required, Invalid Entry"

                errorText.isHidden = false
            } else if (nameInput.text == "") {
                errorText.text = "Error! Name is Blank!"
                errorText.accessibilityLabel = "Error! Name is Blank!"
                nameLabel.textColor = errorText.textColor
                nameInput.accessibilityLabel = "Name * Required, Invalid Entry"
                nameLabel.text = nameLabel.text! + "⚠"
                errorText.isHidden = false
            } else if (emailInput.text == "") {
                errorText.text = "Error! Email is Blank!"
                emailLabel.textColor = errorText.textColor
                emailLabel.text = emailLabel.text! + "⚠"
                emailInput.accessibilityLabel = "Email * Required, Invalid Entry"
                errorText.isHidden = false
            } else {
                errorText.text = "Success! Thanks for registering!"
                errorText.accessibilityLabel = "Success! Thanks for registering!"
                errorText.textColor = greenColorLabel.textColor
                errorText.isHidden = false
            }
            UIAccessibility.post(notification: UIAccessibility.Notification.layoutChanged, argument: self.errorText)

        }
        @IBAction func resetForm(_ sender: Any) {
            errorText.isHidden = true
            errorText.textColor = redColorLabel.textColor
            nameLabel.textColor = UIColor.black
            emailLabel.textColor = UIColor.black
            nameInput.accessibilityLabel = "Name * Required"
            emailInput.accessibilityLabel = "Email * Required"
            nameLabel.text = "Name *"
            emailLabel.text = "Email *"

        }
        

    }

