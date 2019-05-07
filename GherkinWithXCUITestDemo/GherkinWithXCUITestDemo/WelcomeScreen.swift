//
//  ViewController.swift
//  GherkinWithXCUITestDemo
//
//  Created by AHMED on 5/7/19.
//  Copyright © 2019 GreedyGeek. All rights reserved.
//

import UIKit

class WelcomeScreenViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var welcomeMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onEnterClicked(_ sender: Any) {
        if nameField.text?.isEmpty ?? true{
            errorMessage.text = "Name Field is Empty"
            welcomeMessage.text = ""
        }else{
            errorMessage.text = ""
            welcomeMessage.text = "Welcome"
        }
    }
}

