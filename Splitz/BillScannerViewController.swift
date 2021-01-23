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
}

class BillScannerViewController: UIViewController {
    @IBOutlet weak var billScanningStatusLabel: UILabel!
    @IBOutlet weak var manualAmountButton: UIButton!
    
    let constants = BillScannnerConstants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = constants.title
    }
    
    func configureManualAmountEntryButton() {
        manualAmountButton.titleLabel?.text = constants.manualEntryButtonTitle
    }

}

