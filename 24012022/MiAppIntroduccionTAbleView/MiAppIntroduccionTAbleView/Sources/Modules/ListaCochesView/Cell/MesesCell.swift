//
//  MesesCell.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import UIKit
protocol MesesCellProtocol {
    func setupCell(model: String)
}

class MesesCell: UITableViewCell,ReuseIdentifierView {
    
    // MARK: - IBOutlet

    @IBOutlet weak var miNombreMesLBL: UILabel!
    
    //nib & xin son exactamente lo mismo
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MesesCell: MesesCellProtocol {
    func setupCell(model: String) {
        self.miNombreMesLBL.text = model
    }
    
    
}
