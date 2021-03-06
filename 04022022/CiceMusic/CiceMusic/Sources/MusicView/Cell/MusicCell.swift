//
//  MusicCell.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 9/2/22.
//

import UIKit
import Kingfisher

protocol MusicCellInputProtocol {
    func setupCell(data: GenericResult)
}

class MusicCell: UITableViewCell, ReuseIdentifierProtocol {

    
    // MARK: - IBOutlets
    @IBOutlet weak var artistWorkimageView: UIImageView!
    @IBOutlet weak var artisnameLBL: UILabel!
    @IBOutlet weak var releaseDateLBL: UILabel!
    @IBOutlet weak var kindLBLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MusicCell: MusicCellInputProtocol {
    func setupCell(data: GenericResult) {
        
        let url = URL(string: data.artworkUrl100?.replacingOccurrences(of: "100x100", with: "800x800") ?? "")
        let processor = DownsamplingImageProcessor(size: artistWorkimageView.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 20)
        artistWorkimageView.kf.indicatorType = .activity
        artistWorkimageView.kf.setImage(
            with: url,
            placeholder: UIImage(named: "placeholder"),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
        
        self.artisnameLBL.text = data.artistName
        self.releaseDateLBL.text = data.releaseDate
        self.kindLBLB.text = data.kind
    }
}


