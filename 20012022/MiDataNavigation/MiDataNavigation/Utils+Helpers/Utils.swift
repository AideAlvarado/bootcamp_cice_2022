//
//  Utils.swift
//  MiDataNavigation
//
//  Created by Aide Alvarado on 21/1/22.
//

import Foundation
import UIKit

class Utils {
    
    static let shared = Utils()
    
    
    /// method showAlertVC return a alert generic component
    /// - Parameters:
    ///   - title: title put from VC to Alert generic component
    ///   - message: message put from VC to Alert generic component
    /// - Returns: retunr UIAlertController component
    func showAlertVC(title: String, message: String) -> UIAlertController {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alertVC
    }
}

struct DatosUsuarioModel {
    var nombreData: String?
    var apellidoData: String?
    var telefonoData: String?
    var direccionData : String?
    var edadPerroData: String?
    var codigoPostalData: String?
    var ciudadData: String?
    var posicionGeograficaData: String?
}
