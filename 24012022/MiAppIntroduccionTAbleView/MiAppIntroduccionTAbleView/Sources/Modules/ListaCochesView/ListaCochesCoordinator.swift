//
//  ListaCochesCoordinator.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import Foundation
import UIKit

final class ListaCochesCoordinator {
    
    //comodin
    static func navigation() -> UINavigationController{
        let navVC = UINavigationController(rootViewController: self.view())
        return navVC
    }
    // Vista
    static func view() -> UIViewController{
        let vc = ListaCocheViewController()
        return vc
    }
}
