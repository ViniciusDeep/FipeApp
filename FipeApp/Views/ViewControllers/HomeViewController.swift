//
//  HomeViewController.swift
//  FipeApp
//
//  Created by Mateus Sales on 27/09/19.
//  Copyright © 2019 Mateus Sales. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, ConfigurableController {
    var customView: UIView? = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}
