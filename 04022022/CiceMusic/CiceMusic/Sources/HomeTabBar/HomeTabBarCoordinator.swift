//
//  HomeTabBarCoordinator.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 9/2/22.
//

import Foundation
import UIKit

final class HomeTabBarCoordinator {
    
    static func tabBarController(dto: HomeTabBarCoordinatorDTO? = nil) -> UITabBarController {
        let tbc = HomeTabBarViewController()
        
        // Controllers
        let musicVC = MusicCoordinator.navigation()
        let podcastVC = PodcastCoordinator.navigation()
        let booksVC = BookCoordinator.navigation()
        
        // Icons
        let iconMusic = UITabBarItem(title: "Music",
                                     image: UIImage(systemName: "music.note.list"),
                                     selectedImage: UIImage(systemName: "music.note.list"))
        let iconPodcats = UITabBarItem(title: "Music",
                                     image: UIImage(systemName: "music.note.house.fill"),
                                     selectedImage: UIImage(systemName: "music.note.house.fill"))
        let iconBooks = UITabBarItem(title: "Music",
                                     image: UIImage(systemName: "book"),
                                     selectedImage: UIImage(systemName: "book.fill"))
        
        // Asignamos el icono al controlador
        
        musicVC.tabBarItem = iconMusic
        podcastVC.tabBarItem = iconPodcats
        booksVC.tabBarItem = iconBooks
        
        tbc.viewControllers = [musicVC, podcastVC, booksVC]
        
        return tbc
    }
}

struct HomeTabBarCoordinatorDTO {
   
}

