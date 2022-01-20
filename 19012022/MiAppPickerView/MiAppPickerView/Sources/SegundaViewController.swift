//
//  SegundaViewController.swift
//  MiAppPickerView
//
//  Created by Aide Alvarado on 20/1/22.
//

import UIKit

class SegundaViewController: UIViewController {
    
    
    // MARK: - Variables
    
    let dataSourceLocalidades = ["Daganzo", "Tribunal", "Moratalaz", "Fuencarral"]
    let dataSourceCodigosPostales = ["28030", "11111", "22222", "33333"]
    let dataSourcePrioridadTeletrabajo = ["Alta", "Media", "Baja"]
    let dataSourceFotosPerfil = ["momo", "heechul", "momo", "heechul"]
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var localidadesTF: UITextField!
    @IBOutlet weak var codigoPostalTF: UITextField!
    @IBOutlet weak var prioridadTrabajoTF: UITextField!
    @IBOutlet weak var perfilImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionUI()
        
    }
     
    private func configuracionUI(){
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
