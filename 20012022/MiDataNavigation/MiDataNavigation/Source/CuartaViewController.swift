//
//  CuartaViewController.swift
//  MiDataNavigation
//
//  Created by Aide Alvarado on 21/1/22.
//

import UIKit
import MessageUI

class CuartaViewController: UIViewController {
    
    // MARK: - Variables
    
    var datosUsuario = DatosUsuarioModel()
    
    
    
    
    
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var miNombreTF: UILabel!
    @IBOutlet weak var miApellidoTF: UILabel!
    @IBOutlet weak var miTelefonoTF: UILabel!
    @IBOutlet weak var miDireccionTF: UILabel!
    @IBOutlet weak var edadPerroTF: UILabel!
    
    @IBOutlet weak var miCodigoPostalLBL: UILabel!
    @IBOutlet weak var miCiudadLBL: UILabel!
    @IBOutlet weak var miPosicionGeoLBL: UILabel!
    
    
    // MARK: - IBACTION
 
    @IBAction func enviarRodaLaInformaionMailACTION(_ sender: Any) {
        if MFMailComposeViewController.canSendMail(){
            self.present(self.configuracionMailCompose(), animated: true, completion: nil)
        } else {
            self.present(Utils.shared.showAlertVC(title: "que pasaa", message: "estas en un simulador y no puedes enviar email"), animated: true, completion: nil)
        }
    }
    



    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionUI()

        // Do any additional setup after loading the view.
    }
    
    
    private func configuracionUI(){
        self.miNombreTF.text = "Mi nombre es \(self.datosUsuario.nombreData ?? "")"
        self.miApellidoTF.text = "Mi apellido es \(self.datosUsuario.apellidoData ?? "")"
        self.miTelefonoTF.text = "Mi telefono es \(self.datosUsuario.telefonoData ?? "")"
        self.miDireccionTF.text = "Mi direccion es \(self.datosUsuario.direccionData ?? "")"
        self.edadPerroTF.text = "La edad del perro es \(self.datosUsuario.edadPerroData ?? "")"
        self.miCodigoPostalLBL.text = "La codigo postal es \(self.datosUsuario.codigoPostalData ?? "")"
        self.miCiudadLBL.text = "La ciudad es \(self.datosUsuario.ciudadData ?? "")"
        self.miPosicionGeoLBL.text = "Mi posicion geografica es \(self.datosUsuario.posicionGeograficaData ?? "")"
        
    }
    
    private func configuracionMailCompose() -> MFMailComposeViewController{
        let mailCompo = MFMailComposeViewController()
            mailCompo.mailComposeDelegate = self
            mailCompo.setToRecipients(["info@mail.com", "masinfo@gmail.com"])
            mailCompo.setSubject("este es un msnj para el equipo")
        let emailBody = "Los datos del formulario de regstro son \(datosUsuario.nombreData ?? "")   \n \(datosUsuario.apellidoData ?? "")"
            mailCompo.setMessageBody(emailBody, isHTML: false)
            return mailCompo
           
       
    }

}
extension CuartaViewController : MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
