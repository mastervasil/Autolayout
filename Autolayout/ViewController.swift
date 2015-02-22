//
//  ViewController.swift
//  Autolayout
//
//  Created by Vasil on 23.02.15.
//  Copyright (c) 2015 vasil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var secure: Bool = false {
        didSet {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Sucured Password" : "Password"
    }
    @IBAction func toggleSecurity() {
        secure = !secure
    }
    @IBAction func login() {
    }
}

