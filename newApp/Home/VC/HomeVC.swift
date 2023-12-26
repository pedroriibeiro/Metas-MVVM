//
//  HomeVC.swift
//  newApp
//
//  Created by Pedro Ribeiro on 26/12/2023.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
  
       // override func viewDidLoad() {
            //super.viewDidLoad()
            //loginScreen?.delegate(delegate: self)
            //loginScreen?.configTextFieldDelegate(delegate: self)
            
            
      
}
