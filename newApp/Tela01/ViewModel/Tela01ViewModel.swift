//
//  Tela01ViewModel.swift
//  newApp
//
//  Created by Pedro Ribeiro on 28/12/2023.
//

import UIKit

class Tela01ViewModel {

    private var listagem = [
        Lista(image: "circuloImg", userObjective: "."),
        Lista(image: "circuloImg", userObjective: "."),
        Lista(image: "circuloImg", userObjective: "."),
        Lista(image: "circuloImg", userObjective: "."),
        Lista(image: "circuloImg", userObjective: "."),
        Lista(image: "circuloImg", userObjective: ".")
    ]
    
    public var getListListagem: [Lista] {
        listagem
    }
    
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
           return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
        
    }
    
}
