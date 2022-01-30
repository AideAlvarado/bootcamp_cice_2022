//
//  ContactosViewCoordinator.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//

import UIKit

final class ContactosViewCoordinator {
    
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController(rootViewController: view())
        return navVC
    }
    
    static func view() -> UIViewController {
        let vc = ContactosViewController()
        return vc
    }
}
