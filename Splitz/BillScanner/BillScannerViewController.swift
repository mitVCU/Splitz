//
//  ViewController.swift
//  Splitz
//
//  Created by Mit Amin on 12/28/20.
//

import UIKit

struct BillScannnerConstants {
    var title = NSLocalizedString("BillScannerViewController_Title", comment: "")
    var manualEntryButtonTitle = NSLocalizedString("Enter amount manually", comment: "")
    var scanningStatus = NSLocalizedString("Scanning the bill..", comment: "")
}

class BillScannerViewController: UIViewController {
    @IBOutlet weak var billScanningStatusLabel: UILabel!
    @IBOutlet weak var manualAmountButton: UIButton!
    @IBOutlet weak var billManagerView: UIView!
    
    let constants = BillScannnerConstants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = constants.title
        configureManualAmountEntryButton()
        
    }
        
    func configureManualAmountEntryButton() {
        manualAmountButton.titleLabel?.text = constants.manualEntryButtonTitle
        billScanningStatusLabel.text = "Scanning the bill.."
        billManagerView.roundCorners(corners: [.topRight, .topLeft], radius: 50)
        
    }

}

