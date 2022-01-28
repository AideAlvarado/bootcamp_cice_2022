//
//  HomeViewCoordinator.swift
//  MiUserDefault
//
//  Created by Aide Alvarado on 28/1/22.
//

import UIKit

final class HomeViewCoordinator {
    
    static func homeView() -> UITabBarController {
        let homeVC = HomeViewController()
        
        let listaCochesVC = ListaCochesCoordinator.navigation()
        let listaPostVC = ListaPostCoordinator.navigation()
        
        let iconCoches = UITabBarItem(title: "Coches",
                                      image: UIImage(systemName: "house"),
                                      selectedImage: UIImage(systemName: "house.fill"))
        
        let iconPosts = UITabBarItem(title: "Posts",
                                      image: UIImage(systemName: "house"),
                                      selectedImage: UIImage(systemName: "house.fill"))
        listaCochesVC.tabBarItem = iconCoches
        listaPostVC.tabBarItem = iconPosts
        
        homeVC.viewControllers = [listaCochesVC, listaPostVC]
        
        return homeVC
    }
    
}
