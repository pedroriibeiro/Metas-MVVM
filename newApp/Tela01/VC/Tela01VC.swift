//
//  Tela01VC.swift
//  newApp
//
//  Created by Pedro Ribeiro on 27/12/2023.
//

import UIKit

class Tela01VC: UIViewController {
    
    private var homeScreen: Tela01Screen?
    private var viewModel: Tela01ViewModel = Tela01ViewModel()
    
    override func loadView() {
        homeScreen = Tela01Screen()
        view = homeScreen
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
        
    }
    }
    
    
    extension Tela01VC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            viewModel.numberOfItems
        }
        
        //MARK: SOLUCIONAR
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as?
            StoryCardCollectionViewCell
            return cell ?? UICollectionViewCell()
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
        }
        
        
    }

