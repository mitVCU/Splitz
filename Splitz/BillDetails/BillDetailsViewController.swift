//
//  BillDetailsViewController.swift
//  Splitz
//
//  Created by Mit Amin on 1/22/21.
//

import UIKit

enum state {
    case automatedEntry
    case manualEntry
}


class BillDetailsViewController: UIViewController {

    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billDetailsTableView: UITableView!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextField()
        billDetailsTableView.delegate = self
        billDetailsTableView.dataSource = self
        
        let HorizontalCell = UINib(nibName:"HorizontalSelectionTableViewCell", bundle: nil)
        billDetailsTableView.register(HorizontalCell, forCellReuseIdentifier: "HorizontalSelectionTableViewCell")
    }
    
    func configureTextField() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard (_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
}

// MARK: - UITableViewDelegate
extension BillDetailsViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension BillDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = billDetailsTableView.dequeueReusableCell(withIdentifier:"HorizontalSelectionTableViewCell", for: indexPath) as! HorizontalSelectionTableViewCell
        return cell
    }
}


// MARK: - UITextFieldDelegate
extension BillDetailsViewController: UITextFieldDelegate {
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        billAmountTextField.resignFirstResponder()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}


// start with 0.00 have it be grey out
// when user starts editing make it turn white
// validate entered number is a valide amount
// valid amount should



