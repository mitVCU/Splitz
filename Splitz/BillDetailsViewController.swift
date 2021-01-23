//
//  BillDetailsViewController.swift
//  Splitz
//
//  Created by Mit Amin on 1/22/21.
//

import UIKit

enum state {
    case split
    case itemized
}

class BillDetailsViewController: UIViewController {

    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billDetailsTableView: UITableView!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextField()
    }
    
    func configureTextField() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard (_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        billAmountTextField.resignFirstResponder()
    }
    
}

// MARK: - UITableViewDelegate
extension BillDetailsViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension BillDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}


// MARK: - UITextFieldDelegate
extension BillDetailsViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}


// start with 0.00 have it be grey out
// when user starts editing make it turn white
// validate entered number is a valide amount
// valid amount should



