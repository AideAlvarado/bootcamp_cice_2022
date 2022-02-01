//
//  ContactosCell.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 1/2/22.
//

import UIKit
protocol ContactosCellProtocol {
    func configuracionCell(data: ArrayContact)
}

class ContactosCell: UITableViewCell, ReuseIdentifierProtocol {

    
    // MARK: - IBOutlets
    
    @IBOutlet weak var imagePerfil: UIImageView!
    @IBOutlet weak var namePerfil: UILabel!
    @IBOutlet weak var lastnamePerfil: UILabel!
    @IBOutlet weak var customContentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configuracionUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configuracionUI() {
        self.imagePerfil.layer.cornerRadius = self.imagePerfil.frame.width / 2
        self.imagePerfil.layer.borderWidth = 1
        self.imagePerfil.layer.borderColor = UIColor.gray.cgColor
        self.customContentView.layer.cornerRadius = 4
        self.customContentView.layer.borderWidth = 0.3
        self.customContentView.layer.borderColor = UIColor.lightGray.cgColor
        self.addShadow(customObject: self.customContentView)
    }
    
    func addShadow(customObject: UIView) {
        customObject.layer.shadowColor = UIColor.black.cgColor
        customObject.layer.shadowOpacity = 0.5
        customObject.layer.shadowRadius = 2.0
        customObject.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
    }
}

extension ContactosCell: ContactosCellProtocol {
    func configuracionCell(data: ArrayContact) {
        self.imagePerfil.image = UIImage(named: data.imageProfile ?? "placeholder")
        self.lastnamePerfil.text = data.lastName
    }
}
