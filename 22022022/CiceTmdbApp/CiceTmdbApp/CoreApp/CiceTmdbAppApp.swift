//
//  CiceTmdbAppApp.swift
//  CiceTmdbApp
//
//  Created by Aide Alvarado on 23/2/22.
//


import SwiftUI
import Firebase

@main
struct CiceTmdbAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(LoginViewModel())
        }
    }
}


final class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
