//
//  SegundaViewController.swift
//  MiDataNavigation
//
//  Created by Aide Alvarado on 21/1/22.
//

import UIKit

class SegundaViewController: UIViewController {
    
    // MARK: - Variables
    
    var datosUsuario = DatosUsuarioModel()
    var edadPerro: Int?
    var nuevaEdadPerro: Int?
    
    
   // MARK: - IBOutlets
    
    @IBOutlet weak var miNombreLBL: UILabel!
    @IBOutlet weak var miApellidoLBL: UILabel!
    
    
    @IBOutlet weak var miTelefonoTF: UITextField!
    @IBOutlet weak var miDireccionTF: UITextField!
    @IBOutlet weak var edadPerroTF: UITextField!
    
    
    // MARK: - IBACTION
        
  
    @IBAction func calculoEdadPerroACTION(_ sender: UIButton) {
        self.edadPerro = Int(self.edadPerroTF.text ?? "0")
        
        if let edadPerroUnw = self.edadPerro {
            self.nuevaEdadPerro = edadPerroUnw * 7
            self.present(Utils.shared.showAlertVC(title: "Edad de mi perro", message: "El calculo de la edad de mi perro es: \(self.nuevaEdadPerro ?? 0)"),
                         animated: true){
                self.edadPerroTF.text = "\(self.nuevaEdadPerro ?? 0)"
                
            }
        } else{
            self.present(Utils.shared.showAlertVC(title: "Estimado usuario", message: "Por favor introduce la edad de tu perro para calcular"),
                         animated: true,
            completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionUI()
        
        debugPrint(self.datosUsuario.nombreData ?? "")
        debugPrint(self.datosUsuario.apellidoData ?? "")
                        // Do any additional setup after loading the view.
    }
    
    private func configuracionUI() {
        
        self.miNombreLBL.text = "Mi Nombre es: \(self.datosUsuario.nombreData ?? "")"
        self.miApellidoLBL.text = " Mi apellido es: \(self.datosUsuario.apellidoData ?? "")"
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "segueV3"{
            if  !(self.miTelefonoTF.text?.isEmpty ?? false) &&
                !(self.miDireccionTF.text?.isEmpty ?? false) &&
                    "\(self.nuevaEdadPerro ?? 0)".isEmpty {
               
               _ = segue.destination as? TerceraViewController
                
            } else {
                self.present(Utils.shared.showAlertVC(title: "Heyeee",
                                                      message: "Por favor introduce datos en todos los ampos de texto"),
                             animated: true,
                             completion: nil)
            }
        }
        
    }
   

}
