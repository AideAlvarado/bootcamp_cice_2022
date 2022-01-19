//
//  InitialViewController.swift
//  MiAppAlertas
//
//  Created by Aide Alvarado on 19/1/22.
//

import UIKit

class InitialViewController: UIViewController {
    
    // MARK: - IBActions
    

    @IBAction func showAlertViewController(_ sender: UIButton) {
      
        switch sender.tag {
        case 0:
         let alertVC = UIAlertController(title: "Esta es una alerta simple",
                                         message: "Vamos a probar muchas cosas",
                                         preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                let storyboardNavigationViewController = self.storyboard?.instantiateInitialViewController(identifier: "NavigationViewController")

                if let vc = storyboardNavigationViewController          {
                    self.show(vc , sender: nil)
                
                }
                
            }
            alertVC.addAction(okAction)
            
            alertVC.addAction(UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: { _ in
                print(#function)
            }))
            
            self.present(alertVC,
                         animated: true,
                         completion: nil)
            
        default:
            let actionSheetVC = UIAlertController(title: "Esta es una hoja de acciones",
                                                  message: "Vamos a seguir probando todo",
                                                  preferredStyle: .actionSheet)
            actionSheetVC.addAction(UIAlertAction(title: "Default", style: .default, handler: { _ in
                // TODO: - AUI METERMOS OTRO METODO
            }))
            
            actionSheetVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                let storyboardNavigationViewController = self.storyboard?.instantiateInitialViewController(identifier:"NavigationViewController")
                               
                if let vc = storyboardNavigationViewController          {
                    self.show(vc , sender: nil)
                
            }))
                
                actionSheetVC.addAction(UIAlertAction(title: "delete", style: .destructive, handler: { _ in
                    let storyboardPresenterViewController =
                    self.storyboard?.instantiateInitialViewController(creator:PresenterViewController())
                    if let vc = storyboardNavigationViewController          {
                        self.show(vc , sender: nil)
                }))
                self.present(actionSheetVC, animated: true)
                // TODO: - AUI METERMOS OTRO METODO
                
            }
                                                  
            }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
