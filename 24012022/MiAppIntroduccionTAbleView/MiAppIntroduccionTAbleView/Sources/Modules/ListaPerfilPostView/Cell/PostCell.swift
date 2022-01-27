//
//  PostCell.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 26/1/22.
//

import UIKit


protocol PostCellProtocol {
    func setupPostCell(data: UserDataModel?)
}

class PostCell: UITableViewCell, ReuseIdentifierView {

    //MARK: - IBOutlets
    
    @IBOutlet weak var miImagenPerfilPost: UIImageView!
    @IBOutlet weak var miNombrePerfilPost: UILabel!
    @IBOutlet weak var miPuestoTrabajoPost: UILabel!
    @IBOutlet weak var miFechaActualPost: UILabel!
    @IBOutlet weak var miDescripcionPost: UILabel!
    @IBOutlet weak var miTituloPost: UILabel!
    @IBOutlet weak var miNumeroLikesLBL: UILabel!
    @IBOutlet weak var miNumeroComentariosLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // quiero que mi image sea redonda:
        self.configuracionUI()
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configuracionUI() {
        self.miImagenPerfilPost.layer.cornerRadius = self.miImagenPerfilPost.frame.width / 2
        
    }
    
}

extension PostCell: PostCellProtocol {
    func setupPostCell(data: UserDataModel?) {
        self.miImagenPerfilPost.image = UIImage(named: data?.imagePerfil ?? "jimin")
        self.miNombrePerfilPost.text = data?.nombrePerfil
        self.miPuestoTrabajoPost.text = data?.puestoActualperfil
        self.miFechaActualPost.text = "\(Date())"
        self.miDescripcionPost.text = data?.descripcionPerfil
        self.miTituloPost.text = "estamos lanzando app"
        self.miNumeroLikesLBL.text = "Likes 8K"
        self.miNumeroComentariosLBL.text = "Comentarios: 10K"
        

    }
}
