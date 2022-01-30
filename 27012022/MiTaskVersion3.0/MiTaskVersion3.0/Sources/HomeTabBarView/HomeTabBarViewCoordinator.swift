//
//  HomeTabBarViewCoordinator.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//

import UIKit

final class HomeTabBarViewCoordinator {
    
    static func homeViewController() -> UITabBarController {
        let homeVC = HomeTabBarViewController()
        
        //controladores
        let contactosVC = ContactosViewCoordinator.navigation()
        let nuevaTareaVC = NuevaTareaViewCoordinator.navigation()
        let listaTareasVC = ListaTareasViewCoordinator.navigation()
        
        //iconos
        let iconContacto = UITabBarItem(title: "Mis contactos",
                                        image: UIImage(systemName: "person.crop.circle"),
                                        selectedImage: UIImage(systemName: "person.crop.circle.fill"))
        
        let iconNuevaTarea = UITabBarItem(title: "Mis contactos",
                                          image: UIImage(systemName: "pencil.and.outline"),
                                          selectedImage: UIImage(systemName: "pencil.and.outline"))
        
        let iconListaTarea = UITabBarItem(title: "Mis contactos",
                                          image: UIImage(systemName: "text.redaction"),
                                          selectedImage: UIImage(systemName: "text.redaction"))
        
        //asignamos iconos a los controladores
        contactosVC.tabBarItem = iconContacto
        nuevaTareaVC.tabBarItem = iconNuevaTarea
        listaTareasVC.tabBarItem = iconListaTarea
        
        //asignamos controladores al TabBar
        homeVC.viewControllers = [contactosVC, nuevaTareaVC, listaTareasVC]
        
        return homeVC 
    }
}
