//
//  HometabBarCoordinator.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import UIKit

final class HometabBarCoordinator {
    
    static func tabBarController() -> UITabBarController {
        let tabVC = HometabBarViewController()
        
        // controladores
        let listaMeses = ListaCochesCoordinator.navigation()
        let listaCoches = ListaSuperCochesCoordinator.navigation()
        
        // iconos
        let listaMesesIcon = UITabBarItem(title: "Meses",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house.fill"))
        
        let listaCochesIcon = UITabBarItem (title: "Coches",
                                            image: UIImage(systemName: "house"),
                                            selectedImage: UIImage(systemName: "house.fill"))
        
        // asignar el icono al controlador
        listaMeses.tabBarItem = listaMesesIcon
        listaCoches.tabBarItem = listaCochesIcon
        
        // asignamos el array de controladores y su orden
        tabVC.viewControllers = [listaMeses, listaCoches]
        return tabVC
    }
}
