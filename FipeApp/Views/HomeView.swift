//
//  Home.swift
//  FipeApp
//
//  Created by Mateus Sales on 27/09/19.
//  Copyright © 2019 Mateus Sales. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: ViewCodable {
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupAdditionalConfiguration() {
        
    }
}
