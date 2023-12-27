//
//  Tela01VC.swift
//  newApp
//
//  Created by Pedro Ribeiro on 27/12/2023.
//

import UIKit

class Tela01VC: UIViewController {
    
    var loginScreen: Tela01Screen?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
    
    override func loadView() {
        loginScreen = Tela01Screen()
        view = loginScreen
    }
  

}
