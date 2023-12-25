//
//  ViewController.swift
//  newApp
//
//  Created by Pedro Ribeiro on 22/12/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

