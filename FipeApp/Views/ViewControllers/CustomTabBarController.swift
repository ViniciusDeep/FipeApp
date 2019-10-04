//
//  CustomTabBarController.swift
//  FipeApp
//
//  Created by Vinicius Mangueira on 04/10/19.
//  Copyright © 2019 Mateus Sales. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    fileprivate func setupTabBar() {
        viewControllers = [createNavigation(viewController: HomeViewController(), title: "Home"), createNavigation(viewController: ListViewController(), title: "List")]
    }
    
    fileprivate func createNavigation(viewController: UIViewController, title: String) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: viewController)
        viewController.tabBarItem.title = title
        viewController.navigationItem.title = title
        return navigation
    }
}
