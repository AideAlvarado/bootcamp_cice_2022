//
//  ListaSuperCochesCoordinator.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import UIKit

final class ListaSuperCochesCoordinator {
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController(rootViewController: view())
        return navVC
    }
    static func view() -> UIViewController {
        let vc = ListaSuperCochesViewController()
        return vc
    }
}
