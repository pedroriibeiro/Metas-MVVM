//
//  LoginScreen.swift
//  newApp
//
//  Created by Pedro Ribeiro on 22/12/2023.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func tappedNextButton(name: String)
}

class LoginScreen: UIView {
    

    
    private weak var delegate: LoginScreenProtocol?
    
    public func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundoImg")
        return image
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoImg")
        return image
    }()
    
    lazy var labelLogo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem vindo ao Gardlen!"
        label.font = .boldSystemFont(ofSize: 28)
        label.textColor = .white
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        //tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0) /* #343434*/
        tf.backgroundColor = UIColor(red: 20/255, green: 82/255, blue: 20/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.attributedPlaceholder = NSAttributedString(string: "Qual o seu nome?", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(1.0)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var nextButton: UIButton = {
        let button: UIButton = UIButton()
        button.isHidden = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Seguinte >", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.titleLabel?.textAlignment = .right
        // button.clipsToBounds = true
        //button.layer.cornerRadius = 7.5
        button.backgroundColor = .none
        button.addTarget(self, action: #selector(tappedNextButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedNextButton(_ sender: UIButton) {
        //print("funcionou essa budega")
        if let userName = nameTextField.text {
            delegate?.tappedNextButton(name: userName) }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func addElements() {
        addSubview(subImageView)
        addSubview(logoImageView)
        addSubview(labelLogo)
        addSubview(nameTextField)
        addSubview(nextButton)
        
    }
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: subImageView.topAnchor, constant: 140),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 130),
            logoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
            logoImageView.heightAnchor.constraint(equalToConstant: 120),
            
            labelLogo.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 2),
           // labelLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            //labelLogo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            labelLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelLogo.heightAnchor.constraint(equalToConstant: 120),
            
            
            nameTextField.topAnchor.constraint(equalTo: labelLogo.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: labelLogo.leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: labelLogo.trailingAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 45),
            
            nextButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 160),
            nextButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 260),
            
         
        ])
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        nameTextField.delegate = delegate
    }
}
