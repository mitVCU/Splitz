//
//  AddItemTableViewCell.swift
//  Splitz
//
//  Created by Mit Amin on 5/30/21.
//

import UIKit

class AddItemTableViewCell: UITableViewCell {

    @IBOutlet weak var mainBackgroundView: UIView! {
        didSet {
            mainBackgroundView.layer.borderWidth = 2
            mainBackgroundView.layer.cornerRadius = 10
            mainBackgroundView.layer.borderColor = App.Colors.accentColor?.cgColor
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    let identifier = "AddItemTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "+ Add an Item"
        titleLabel.textColor =  App.Colors.accentColor
    }
}
