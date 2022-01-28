//
//  ListaCochesCoordinator.swift
//  MiUserDefault
//
//  Created by Aide Alvarado on 28/1/22.
//

import UIKit


final class ListaCochesCoordinator {
    
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController(rootViewController: view())
        return navVC
    }
    
    static func view() -> UIViewController {
        let vc = ListaCochesViewController()
        return vc
    }
}
