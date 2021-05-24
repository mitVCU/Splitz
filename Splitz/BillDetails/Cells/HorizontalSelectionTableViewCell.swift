//
//  HorizontalSelectionTableViewCell.swift
//  Splitz
//
//  Created by Mit Amin on 5/23/21.
//

import Foundation
import UIKit

protocol HorizontalSelectionTableViewCellProtocol {
    func populate(with data: HorizontalSelectionCellViewModelProtocol)
}

class HorizontalSelectionTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension HorizontalSelectionTableViewCell: HorizontalSelectionTableViewCellProtocol {
    func populate(with data: HorizontalSelectionCellViewModelProtocol) {
        if let data = data as? HorizontalSelectionCellViewModel {
            titleLabel.text = data.title
        }
    }
}
