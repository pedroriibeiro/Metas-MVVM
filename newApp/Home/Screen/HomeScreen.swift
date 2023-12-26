//
//  HomeScreen.swift
//  newApp
//
//  Created by Pedro Ribeiro on 26/12/2023.
//

import UIKit

class HomeScreen: UIView {

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
        label.text = "  Acreditamos que com pequenas metas diárias você poderá alcançar uma estilo de vida mais leve e feliz."
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
        addSubview(text1Label)
        addSubview(text2Label)
        addSubview(text3Label)
        addSubview(logo2ImageView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            text1Label.topAnchor.constraint(equalTo: subImageView.topAnchor, constant: 140),
            text1Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            text1Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            text1Label.heightAnchor.constraint(equalToConstant: 100),
            
            text2Label.topAnchor.constraint(equalTo: text1Label.bottomAnchor, constant: 5),
            text2Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            text2Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            text2Label.heightAnchor.constraint(equalToConstant: 110),
            
            text3Label.topAnchor.constraint(equalTo: text2Label.bottomAnchor, constant: 5),
            text3Label.centerXAnchor.constraint(equalTo: centerXAnchor),
            text3Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            text3Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            text3Label.heightAnchor.constraint(equalToConstant: 110),
            
            logo2ImageView.topAnchor.constraint(equalTo: text3Label.bottomAnchor, constant: 80),
            logo2ImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            logo2ImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -260),
            logo2ImageView.heightAnchor.constraint(equalToConstant: 100),
            // logo2ImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -70)
            
            
          
        
        
        
        
        ])
    }
    
    

   
}
