//
//  ViewController.swift
//  TabBarApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        tabBarController?.viewControllers?.forEach{ viewController in
            if let firstVS = viewController as? FirstViewController {
                firstVS.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            } else if let navigationVS = viewController as? UINavigationController {
                let thirdVS = navigationVS.topViewController as? ThirdViewController
                thirdVS?.view.backgroundColor = .systemCyan
                thirdVS?.title = "Third VC"
            }
        }
    }
}

