//
//  AlertDefaultViewController.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 16/2/22.
//

import UIKit

class AlertDefaultViewController: UIViewController {
    
    // MARK - Variables globales
    var viewModel: CustomAlertManager?

    // MARKs - IBOutlets
    
    @IBOutlet weak var titleAlertLBL: UILabel!
    @IBOutlet weak var messageAlertLBL: UILabel!
    @IBOutlet weak var primaryBTN: UIButton!
    @IBOutlet weak var secondaryBTN: UIButton!
    
    
    //MARKs - Actions
    
    @IBAction func closeACTION(_ sender: Any) {
    }
    
    @IBAction func primaryButtonACTION(_ sender: Any) {
    }
    
    @IBAction func seconddaryButtonACTION(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    

}
