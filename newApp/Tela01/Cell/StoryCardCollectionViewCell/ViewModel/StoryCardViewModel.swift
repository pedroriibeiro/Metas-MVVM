//
//  StoryCardViewModel.swift
//  newApp
//
//  Created by Pedro Ribeiro on 29/12/2023.
//

import UIKit

class StoryCardViewModel {

    private var listListagem: [Lista]
    
    init(listListagem: [Lista]) {
        self.listListagem = listListagem
    }
    
    
    public var numberOfItems: Int {
        listListagem.count
    }
    
    func loudCurrentListagem(indexPath: IndexPath) -> Lista {
        listListagem[indexPath.row]
    }
    
    
}
