//
//  AppCoreCoordinator.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//

import UIKit

protocol AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow)
}

final class AppCoreCoordinator {
    
    var actualVC = UIViewController()
    
}

extension AppCoreCoordinator: AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow) {
        self.actualVC = LoginViewCoordinator.view()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
}
