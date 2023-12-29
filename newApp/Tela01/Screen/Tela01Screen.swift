//
//  Tela01Screen.swift
//  newApp
//
//  Created by Pedro Ribeiro on 27/12/2023.
//

import UIKit

class Tela01Screen: UIView {
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundoImg")
        return image
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        //TO DO: REGISTER
        cv.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    private func addElements() {
        addSubview(subImageView)
        addSubview(collectionView)
       
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        subImageView.pin(to: self)
        collectionView.pin(to: self)
        //NSLayoutConstraint.activate([
            
        //  subImageView.topAnchor.constraint(equalTo: topAnchor),
          //subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
          //subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
          //subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            //collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            //collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            //collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            //collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -200),
     
        //])
        
    }
}
