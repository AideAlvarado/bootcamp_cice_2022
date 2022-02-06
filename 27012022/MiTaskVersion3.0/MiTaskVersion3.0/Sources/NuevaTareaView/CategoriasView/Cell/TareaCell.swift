//
//  CategoriaCell.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 5/2/22.
//

import UIKit

class TareaCell: UITableViewCell, ReuseIdentifierProtocol {
    
    // MARK: - IBOutlet
    @IBOutlet weak var nombreCategoriaLBL: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
