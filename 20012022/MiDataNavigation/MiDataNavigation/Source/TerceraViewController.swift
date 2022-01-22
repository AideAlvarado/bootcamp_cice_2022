//
//  TerceraViewController.swift
//  MiDataNavigation
//
//  Created by Aide Alvarado on 21/1/22.
//

import UIKit

class TerceraViewController: UIViewController {
    
    // MARK: - Variables
    
    var datosUsuario = DatosUsuarioModel()
    let dataSourceCodigosPostales = ["11111", "22222", "33333", "44444", "55555"]
    let dataSourceCiudades = ["Madrid", "Tokyo", "Liverpool", "Monterrey", "McAllen"]
    let dataSourcePosicionGeografica = ["40.1234", "-20.1234", "80.1234", "-130.1234", "20.1234"]
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var miNombreTF: UILabel!
    @IBOutlet weak var miApellidoTF: UILabel!
    @IBOutlet weak var miTelefonoTF: UILabel!
    @IBOutlet weak var miDireccionTF: UILabel!
    @IBOutlet weak var edadPerroTF: UILabel!
        
    @IBOutlet weak var miCodigoPostalTF: UITextField!
    @IBOutlet weak var miCiudadTF: UITextField!
    @IBOutlet weak var miPosicionGeoTF: UITextField!
    
    // MARK: - IBACTION
    
    
    @IBAction func irVentana4ACTION(_ sender: Any) {
    }
    
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurationUI()
     
    
    }
    
    private func configurationUI(){
        self.miNombreTF.text = "Mi nombre es \(self.datosUsuario.nombreData ?? "")"
        self.miApellidoTF.text = "Mi apellido es \(self.datosUsuario.apellidoData ?? "")"
        self.miTelefonoTF.text = "Mi telefono es \(self.datosUsuario.telefonoData ?? "")"
        self.miDireccionTF.text = "Mi direccion es \(self.datosUsuario.direccionData ?? "")"
        self.edadPerroTF.text = "La edad del perro es \(self.datosUsuario.edadPerroData ?? "")"
       
        Utils.shared.configuracionPickerView(tag: 1,
                                             delegate: self,
                                             dataSource: self,
                                             textField: self.miCodigoPostalTF,
                                             dataArray: self.dataSourceCodigosPostales)
        
        Utils.shared.configuracionPickerView(tag: 3,
                                             delegate: self,
                                             dataSource: self,
                                             textField: self.miCodigoPostalTF,
                                             dataArray: self.dataSourceCodigosPostales)
        
        Utils.shared.configuracionPickerView(tag: 2,
                                             delegate: self,
                                             dataSource: self,
                                             textField: self.miPosicionGeoTF,
                                             dataArray: self.dataSourcePosicionGeografica)
    }
    
   // MARK: - NAVIGATION
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segueV4"{
            if Utils.shared.dataIntexFieldIsEmpty(primerParametro: [self.miCodigoPostalTF.text ?? "",
                                                                    self.miCiudadTF.text ?? "",
                                                                    self.miPosicionGeoTF.text ?? ""])   {
                
                let ventana4 = segue.destination as? CuartaViewController
                ventana4?.datosUsuario.nombreData = self.datosUsuario.nombreData
                ventana4?.datosUsuario.apellidoData = self.datosUsuario.apellidoData
                ventana4?.datosUsuario.telefonoData = self.datosUsuario.telefonoData
                ventana4?.datosUsuario.direccionData = self.datosUsuario.direccionData
                ventana4?.datosUsuario.edadPerroData = self.datosUsuario.edadPerroData
                ventana4?.datosUsuario.codigoPostalData = self.miCodigoPostalTF.text
                ventana4?.datosUsuario.ciudadData = self.miCiudadTF.text
                ventana4?.datosUsuario.posicionGeograficaData = self.miPosicionGeoTF.text
                
                
            } else {
                self.present(Utils.shared.showAlertVC(title: "MMMM", message: "Ya sabes que tienes que rellenar los datos"), animated: true, completion: nil)
            }
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
 
}

extension TerceraViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return self.dataSourceCodigosPostales[row]
        case 2:
            return self.dataSourcePosicionGeografica[row]
        default:
            return self.dataSourceCiudades[row]
        
       
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag{
        case 1:
            self.miCiudadTF.text = self.dataSourceCiudades[row]
        case 2:
            self.miPosicionGeoTF.text = self.dataSourcePosicionGeografica[row]
        default:
            self.miCodigoPostalTF.text = self.dataSourceCodigosPostales[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
}

extension TerceraViewController: UIPickerViewDataSource{
    func numberOfComponents( in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return self.dataSourceCiudades.count
        case 2:
            return self.dataSourcePosicionGeografica.count
        default:
            return self.dataSourceCodigosPostales.count
        }
        
    }
    
  
}
