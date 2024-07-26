//
//  TabBarViewController.swift
//  TabBarApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarApperance
        tabBar.scrollEdgeAppearance = tabBarApperance
    }
}
