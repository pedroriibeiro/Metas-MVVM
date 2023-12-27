//
//  HomeScreen.swift
//  newApp
//
//  Created by Pedro Ribeiro on 26/12/2023.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func tappedNextButton2()
}
    
    class HomeScreen: UIView {
        
        var userName: String
        
        
        
        private weak var delegate: HomeScreenProtocol?
        
        public func delegate(delegate: HomeScreenProtocol?) {
            self.delegate = delegate
        }
        
        lazy var subImageView: UIImageView = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(named: "fundoImg")
            return image
        }()
        
        lazy var text1Label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = .systemFont(ofSize: 22)
            label.text = "  O Gardlen foi desenvolvido pensando em cuidar da sua saúde mental e bem estar."
            label.numberOfLines = 8
            label.textAlignment = .natural
            
            return label
        }()
        
        lazy var text2Label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = .systemFont(ofSize: 22)
            label.text = "  Acreditamos que com pequenas metas diárias você poderá alcançar um estilo de vida mais leve e feliz."
            label.numberOfLines = 6
            label.textAlignment = .natural
            return label
        }()
        
        lazy var text3Label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(red: 20/255, green: 82/255, blue: 20/255, alpha: 1.0)
            label.font = .boldSystemFont(ofSize: 20)
            label.text = "  Um jardim bem cuidado floresce"
            label.numberOfLines = 4
            label.textAlignment = .left
            return label
        }()
        
        lazy var logo2ImageView: UIImageView = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(named: "plantaImg")
            return image
        }()
        
        lazy var nextButton2: UIButton = {
            let button: UIButton = UIButton()
            button.isHidden = false
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Seguinte >", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            button.titleLabel?.textAlignment = .right
            button.clipsToBounds = true
            button.layer.cornerRadius = 7.5
            button.backgroundColor = .none
            button.addTarget(self, action: #selector(tappedNextButton2), for: .touchUpInside)
            return button
        }()
        @objc func tappedNextButton2(_ sender: UIButton) {
            delegate?.tappedNextButton2()
        }
        
        lazy var userNameLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(red: 20/255, green: 82/255, blue: 20/255, alpha: 1.0)
            label.font = .systemFont(ofSize: 22)
            label.text = "  Olá, \(userName)."
            label.numberOfLines = 6
            label.textAlignment = .natural
            return label
        }()
        
        
        
        //vc?.name = self.loginScreen?.nameTextField.text
        
        
        init(frame: CGRect = .zero, userName: String) {
            self.userName = userName
            super.init(frame: frame)
            addElements()
            configConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func addElements() {
            addSubview(subImageView)
            addSubview(text1Label)
            addSubview(text2Label)
            addSubview(text3Label)
            addSubview(logo2ImageView)
            addSubview(nextButton2)
            addSubview(userNameLabel)
            
        }
        
        private func configConstraints() {
            NSLayoutConstraint.activate([
                
                subImageView.topAnchor.constraint(equalTo: topAnchor),
                subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                text1Label.topAnchor.constraint(equalTo: subImageView.topAnchor, constant: 200),
                text1Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
                text1Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
                text1Label.heightAnchor.constraint(equalToConstant: 100),
                text1Label.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                text2Label.topAnchor.constraint(equalTo: text1Label.bottomAnchor, constant: 5),
                text2Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
                text2Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
                text2Label.heightAnchor.constraint(equalToConstant: 110),
                text2Label.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                text3Label.topAnchor.constraint(equalTo: text2Label.bottomAnchor, constant: 5),
                text3Label.centerXAnchor.constraint(equalTo: centerXAnchor),
                text3Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
                text3Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
                text3Label.heightAnchor.constraint(equalToConstant: 110),
                text3Label.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                logo2ImageView.topAnchor.constraint(equalTo: text3Label.bottomAnchor, constant: 20),
                logo2ImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                logo2ImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -260),
                logo2ImageView.heightAnchor.constraint(equalToConstant: 100),
                logo2ImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                nextButton2.topAnchor.constraint(equalTo: text3Label.topAnchor, constant: 140),
                nextButton2.trailingAnchor.constraint(equalTo: text3Label.trailingAnchor),
                
                userNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 140),
                userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
                userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
                
                
                
                
                
                
                
                
                
                
            ])
        }
        
        
        
        
    }

