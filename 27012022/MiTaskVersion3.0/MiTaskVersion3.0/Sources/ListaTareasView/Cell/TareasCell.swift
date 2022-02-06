//
//  TareaCell.swift
//  MiTaskVersion3.0
//
//  Created by Aide Alvarado on 5/2/22.
//

import UIKit

class TareasCell: UITableViewCell, ReuseIdentifierProtocol {
    
    
    // MARK - IBOutlets
    
    
    @IBOutlet weak var nombreTarea: UILabel!
    @IBOutlet weak var prioridadTarea: UILabel!
    @IBOutlet weak var imageVI: UIImageView!
    
    
    
       
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
