//
//  ItemTableViewCell.swift
//  Splitz
//
//  Created by Mit Amin on 5/30/21.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contactsStackView: UIStackView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var mainBackgroundView: UIView! {
        didSet {
            mainBackgroundView.layer.borderWidth = 1.5
            mainBackgroundView.layer.cornerRadius = 14
            mainBackgroundView.layer.borderColor = UIColor(hexString: "30E8E8")?.cgColor
        }
    }
    @IBOutlet weak var shadowView: UIView!
    
    let identifier = "ItemTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.textColor =  UIColor(hexString: "30E8E8")
        priceLabel.textColor =  UIColor(hexString: "30E8E8")
    }
}
