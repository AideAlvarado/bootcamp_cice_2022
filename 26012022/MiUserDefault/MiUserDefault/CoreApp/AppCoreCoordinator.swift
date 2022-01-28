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
        
        self.muestraRutaUserDefault()
        
        if Utils.Constants().kPrefs.bool(forKey: Utils.Constants().kUserLogado) {
            self.actualVC = HomeViewCoordinator.homeView()
        } else {
            self.actualVC = RegistroCoordinator.view()
        }
        
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
    
    private func muestraRutaUserDefault() {
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
    }
}
