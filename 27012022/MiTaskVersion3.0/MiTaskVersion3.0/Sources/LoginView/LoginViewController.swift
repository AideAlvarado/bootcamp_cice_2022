//
//  LoginViewController.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Variables globales
    var usuarioLogado = false

    // MARK: - IBOutlet
    
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var contentViewusername: UIView!
    @IBOutlet weak var contentViewPassword: UIView!
    @IBOutlet weak var loginBTN: UIButton!
    
    @IBAction func rememberMeACTION(_ sender: Any) {
        if datosCompletados() {
            usuarioLogado = true
            Utils.Constantes().kPrefs.setValue(self.usernameTF.text, forKey: Utils.Constantes().kUsername)
            Utils.Constantes().kPrefs.setValue(self.passwordTF.text, forKey: Utils.Constantes().kPassword)
            Utils.Constantes().kPrefs.setValue(self.usuarioLogado, forKey: Utils.Constantes().kUsuarioLogado)
        }else {
            self.present(Utils.muestraAlerta(titulo: "hey!",
                                              mensaje: "Rellena los datos",
                                              completionHandler: nil),
                          animated: true,
                          completion: nil)
        }    }
    
    
    @IBAction func loginACTION(_ sender: Any) {
        if datosCompletados() {
            self.borrarDatosFormulario()
        }else {
            self.present(Utils.muestraAlerta(titulo: "hey!",
                                              mensaje: "Rellena los datos",
                                              completionHandler: nil),
                          animated: true,
                          completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionUI()

    }

    private func configuracionUI () {
        self.contentViewusername.backgroundColor = .clear
        self.contentViewusername.layer.cornerRadius = 37
        self.contentViewusername.layer.borderWidth = 2
        self.contentViewusername.layer.borderColor = #colorLiteral(red: 1, green: 0.2827598444, blue: 0.25824927, alpha: 1)
        
        self.contentViewPassword.backgroundColor = .clear
        self.contentViewPassword.layer.cornerRadius = 37
        self.contentViewPassword.layer.borderWidth = 2
        self.contentViewPassword.layer.borderColor = #colorLiteral(red: 1, green: 0.2827598444, blue: 0.25824927, alpha: 1)
        
        self.loginBTN.layer.cornerRadius = 22
    }
    
    private func datosCompletados() -> Bool {
        return !(self.usernameTF.text?.isEmpty ?? false) && !(self.passwordTF.text?.isEmpty ?? false)
    }
    
    private func borrarDatosFormulario() {
        self.usernameTF.text = ""
        self.passwordTF.text = ""
        self.mostrarHomeTabBar()
    }
    
    private func mostrarHomeTabBar() {
        
        let vc = NuevaTareaViewCoordinator.navigation()
        //let vc = HomeTabBarViewCoordinator.homeViewController()
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}

