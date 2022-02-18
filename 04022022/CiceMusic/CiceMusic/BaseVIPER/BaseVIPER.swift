//
//  BaseVIPER.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 6/2/22.
//

import UIKit
import PKHUD

// MARK: - ViewController
class BaseView<P>: UIViewController {
    var presenter: P?
    
    func showLoading() {
        HUD.show(.progress)
    }
    func hideLoading(){
        HUD.hide()
    }
}
// MARK: - Presenter, es el arquitecto del viper
//conexion de output hacia la vista "V" / "I" input del interactor (gestor de logica de negocio) / "R"  conexion de enrutador de nvegacion
class BasePresenter<V, I, R> {
    var viewController: V?
    var interactor: I?
    var router: R?
    //constructor de conveniencia, lo que hace es impactar al self.init
    convenience init(vc: V, interactor: I? = nil, router: R? = nil) {
        self.init()
        self.viewController = vc
        self.interactor = interactor
        self.router = router
    }
}
// MARK: - Interactor
//lo que hace es comunicarse con solo con el presenter
class BaseInteractor<P> {
    var presenter: P?
    
    convenience init(presenter: P) {
        self.init()
        self.presenter = presenter
    }
}
// MARK: - Router
//se encarga de la navegacion. //es lo que genera la vista
class BaseRouter<V> {
    var viewController: V?
    
    convenience init(view: V? = nil) {
        self.init()
        self.viewController = view
    }
}

class BaseNavigation: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
