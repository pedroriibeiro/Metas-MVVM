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
        view.backgroundColor = .white
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        
        
        
    }

}

extension LoginVC: LoginScreenProtocol {
    func tappedNextButton(name: String) {
        
        print("Chegou na vc")
        let vc: HomeVC = HomeVC(name: name)
      // present(vc, animated: true)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let name: String = loginScreen?.nameTextField.text ?? ""
        
        if !name.isEmpty {
            print("botão habilitado")
            loginScreen?.nextButton.isHidden = false
            loginScreen?.nextButton.isEnabled = true
            loginScreen?.nextButton.setTitleColor(.white, for: .normal)
        } else {
            print("botão desabilitado")
            loginScreen?.nextButton.isEnabled = false
            loginScreen?.nextButton.setTitleColor(.white.withAlphaComponent(0.0), for: .normal)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
    
    
    
        }
 
