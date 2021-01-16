//
//  ViewController.swift
//  Splitz
//
//  Created by Mit Amin on 12/28/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billScanningStatusLabel: UILabel!
    @IBOutlet weak var manualAmountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configureManualAmountEntryButton() {
        manualAmountButton.titleLabel?.text = "Enter Amount Manually"
    }

}

