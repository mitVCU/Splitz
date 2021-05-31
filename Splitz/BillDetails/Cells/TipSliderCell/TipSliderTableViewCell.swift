//
//  TipSliderTableViewCell.swift
//  Splitz
//
//  Created by Mit Amin on 5/25/21.
//

import UIKit

class TipSliderTableViewCell: UITableViewCell {
    let identifier = "TipSliderTableViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipValueLabel: UILabel!
    
    var model = TipSliderCellViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureTipSlider()
        configuretipValueLabel()
        titleLabel.text = model.title
        titleLabel.textColor = UIColor(hexString: "AEAFBC")
        tipValueLabel.textColor = UIColor(hexString: "30E8E8")
    }
    
    @IBAction func tipSliderValueDidChange(_ sender: UISlider) {
        model.sliderValue = Int(sender.value)
        updatetipValueLabel()
    }
    
    func updatetipValueLabel() {
        tipValueLabel.text = "\(Int(model.sliderValue)) %"
    }
    
    func configuretipValueLabel() {
        updatetipValueLabel()
    }
    
    func configureTipSlider() {
        tipSlider.minimumValue = 0
        tipSlider.maximumValue = 100
        tipSlider.value = Float(model.sliderValue)
        tipSlider.tintColor = UIColor(hexString: "30E8E8")
    }
    
}

