//
//  ContactosViewController.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 30/1/22.
//

import UIKit

class ContactosViewController: UIViewController {
    
    // MARK: - Variables globales
    var datasourceContactos: [ArrayContact] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setDataSourceContacts()

        // Do any additional setup after loading the view.
    }

    private func setDataSourceContacts() {
        self.datasourceContactos = ContactosServerModel.stubbedContactos ?? []
        self.configuracionTableView()
    }
   
    private func configuracionTableView() {
        self.contactsTableView.delegate = self
        self.contactsTableView.dataSource = self
        // Registrar la celda
        self.contactsTableView.register (UINib(nibName: ContactosCell.defaultReuseIdentifier,bundle:nil),forCellReuseIdentifier: ContactosCell.defaultReuseIdentifier)
    }
}

extension ContactosViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.datasourceContactos[indexPath.row]
        let vc = DetalleContactoViewCoordinator.view(dto: DetalleContactoCoordinatorDTO(model: model))
        self.show(vc, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
extension ContactosViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datasourceContactos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
            let cell = self.contactsTableView.dequeueReusableCell(withIdentifier: ContactosCell.defaultReuseIdentifier, for: indexPath) as! ContactosCell
            cell.configuracionCell(data: self.datasourceContactos[indexPath.row])
            return cell
        }
    }

