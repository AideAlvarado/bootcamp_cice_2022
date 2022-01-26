//
//  ListaSuperCochesViewController.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import UIKit

class ListaSuperCochesViewController: UIViewController {
    
    // MARK: - Variables globales
    var dataSourceCoches: [CochesModel] = []
    var imageCoche = UIImage(named: "minicooper")
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var miListaCochesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionUI()
        self.configuracionTableView()

        // Do any additional setup after loading the view.
    }

    // MARK: - Metodos privados
    private func configuracionUI(){
        self.title = Utils.Constants().tituloListaCoches
        for item in 0..<23 {
            let modelData = CochesModel(nombre: "mini cooper",
                                        color: "pink",
                                        imagen: imageCoche)
            dataSourceCoches.append(modelData)
            print("\(dataSourceCoches[item])")
        }
        
    }
    
    private func configuracionTableView(){
        self.miListaCochesTableView.delegate = self
        self.miListaCochesTableView.dataSource = self
        self.miListaCochesTableView.register(UINib(nibName: CochesCell.defaultReuseIdentifier,
                                                   bundle: nil),
                                             forCellReuseIdentifier: CochesCell.defaultReuseIdentifier)
    }

}

extension ListaSuperCochesViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSourceCoches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cellCoches = self.miListaCochesTableView.dequeueReusableCell(withIdentifier: CochesCell.defaultReuseIdentifier, for: indexPath) as! CochesCell
        cellCoches.setupCell(data :self.dataSourceCoches[indexPath.row])
        return cellCoches
    }
}

extension ListaSuperCochesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.dataSourceCoches[indexPath.row]
        print("\(model.nombre ?? "El mete la pata")" + "\(self.dataSourceCoches[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
