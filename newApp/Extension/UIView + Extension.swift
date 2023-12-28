//
//  UIView + Extension.swift
//  newApp
//
//  Created by Pedro Ribeiro on 28/12/2023.
//

import Foundation
import UIKit

extension UIView {
    
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor)
            
            
        ])
    }
    
    
}
