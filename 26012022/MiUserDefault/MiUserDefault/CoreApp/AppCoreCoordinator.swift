//
//  AppCoreCoordinator.swift
//  MiUserDefault
//
//  Created by Aide Alvarado on 27/1/22.
//


import UIKit

protocol AppCoreCoodinatorProtocol {
    func initialViewController(window: UIWindow)
}

final class AppCoreCoordinator {
    var actualVC: UIViewController?
}

extension AppCoreCoordinator: AppCoreCoodinatorProtocol {
    func initialViewController(window: UIWindow) {
        self.actualVC = RegistroCoordinator.view()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
}
