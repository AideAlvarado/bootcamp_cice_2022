//
//  AppDelegate.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 6/2/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    let appCore: AppCoreCoordinatorProtocol = AppCoreCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // aqui definimos el controlador con el que vamos a trabajar:
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let windowUnw = self.window {
            self.appCore.initialViewController(window: windowUnw)
        }
        return true
    }
}
