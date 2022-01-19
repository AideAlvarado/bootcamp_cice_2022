//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Aide Alvarado on 17/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var myHelloWorld: UILabel!
    @IBOutlet weak var myBestRegards: UILabel!
    @IBOutlet weak var myButtonSaludaATodos: UIButton!
    
    // MARK: IBActions
    
    @IBAction func myButtonSaludaATodosACTION(_ sender: UIButton) {
        self.myHelloWorld.text = "Hola al Bootcamp de iOS CICE 2022"
        self.myBestRegards.text = "Adios a todos y nos vemos despues del descanso"
        self.myButtonSaludaATodos.setTitle("Aqui de nuevo", for:.normal)
        self.myButtonSaludaATodos.layer.cornerRadius = 10
        
    }
    
    
    // MARK: - Ciclo de vida del controlador

    override func viewDidLoad() {
        super.viewDidLoad()
        self.estamosCurrando()
    }


    
    // MARK: - Funciones privadas
    private func estamosCurrando(){
        print("Aqui estamos currando a tope")
    }
}

