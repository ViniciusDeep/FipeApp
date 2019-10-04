//
//  ConfigurableController.swift
//  FipeApp
//
//  Created by Vinicius Mangueira on 04/10/19.
//  Copyright © 2019 Mateus Sales. All rights reserved.
//

//
//  ConfigurableController.swift
//  Sigma
//
//  Created by Vinicius Mangueira on 23/08/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

protocol ConfigurableController: UIViewController {
    var customView: UIView? { get set }
    func setupView()
    func addSubView()
    func setupConstraints()
}

extension ConfigurableController {
    func setupView() {
        addSubView()
        setupConstraints()
    }
    func addSubView() {
        guard let myView = customView else {return print("You should pass view")}
        self.view.addSubview(myView)
    }
    func setupConstraints() {
        if let myView = customView {
            myView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                myView.topAnchor.constraint(equalTo: view.topAnchor),
                myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                myView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
    }
}

