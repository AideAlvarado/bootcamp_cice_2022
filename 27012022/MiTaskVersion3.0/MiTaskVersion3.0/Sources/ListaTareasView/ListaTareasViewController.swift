//
//  ListaTareasViewController.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//


import UIKit

class ListaTareasViewController: UIViewController {
    
    // MARK: - Variables globales
    var datasourceTareas: [DownloadNewModel] = []
    
    // MARK: - IBOutlets
    @IBOutlet weak var listaTareasTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionTV()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SaveFavoritesPresenter.shared.getAllLocal { results in
            if let resultsUnw = results{
                self.datasourceTareas = resultsUnw.downloads ?? []
                self.listaTareasTableView.reloadData()
            }
        } failure: { error in
            debugPrint(error?.debugDescription ?? "AQUI TU METES-GAMBA")
        }
    }
    
    private func configuracionTV() {
        self.listaTareasTableView.delegate = self
        self.listaTareasTableView.dataSource = self
        self.listaTareasTableView.register(UINib(nibName: TareasCell.defaultReuseIdentifier,
                                                 bundle: nil),
                                           forCellReuseIdentifier: TareasCell.defaultReuseIdentifier)
    }

}

extension ListaTareasViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.datasourceTareas.count == 0{
            let imageBackground = UIImageView(image: #imageLiteral(resourceName: "img_empty_list"))
            imageBackground.contentMode = .scaleAspectFit
            self.listaTareasTableView.backgroundView = imageBackground
        }else{
            self.listaTareasTableView.backgroundView = UIView()
        }
        return self.datasourceTareas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.listaTareasTableView.dequeueReusableCell(withIdentifier: TareasCell.defaultReuseIdentifier,
                                                                 for: indexPath) as! TareasCell
        cell.nombreTarea.text  = self.datasourceTareas[indexPath.row].newTask
        cell.prioridadTarea.text = self.datasourceTareas[indexPath.row].priority
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

