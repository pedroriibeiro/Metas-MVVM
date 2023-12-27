//
//  HomeVC.swift
//  newApp
//
//  Created by Pedro Ribeiro on 26/12/2023.
//

import UIKit

class HomeVC: UIViewController {
    
    var name: String
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen(userName: name)
        view = homeScreen
    
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        homeScreen?.delegate(delegate: self)
        
        
        
        
    }
    init(name: String) {
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeVC: HomeScreenProtocol {
    func tappedNextButton2() {
        print("chegou na vc")
        let vc: Tela01VC = Tela01VC()
       // present(vc, animated: true)
       // vc.name = self.loginScreen?.nameTextField.text
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
