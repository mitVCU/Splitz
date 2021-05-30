//
//  BillDetailsViewController.swift
//  Splitz
//
//  Created by Mit Amin on 1/22/21.
//

import UIKit

class BillDetailsViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var billAmountView: UIView!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billDetailsTableView: UITableView!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    var model = BillDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureBillAmountView()
        configureTableview()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(hexString: "30E8E8")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        navigationController?.navigationBar.tintColor = .clear
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    func configureBillAmountView() {
        billAmountView.layer.borderWidth = 0
        billAmountView.backgroundColor = UIColor(hexString: "30E8E8")
        billAmountLabel.text = "$ \(model.billAmount)"
        
    }
    
    func configureTableview() {
        billDetailsTableView.delegate = self
        billDetailsTableView.dataSource = self
        billDetailsTableView.backgroundColor = .white
        
        let tipCell = UINib(nibName: "TipSliderTableViewCell", bundle: nil)
        let horizontalCell = UINib(nibName:"HorizontalSelectionTableViewCell", bundle: nil)
        
        billDetailsTableView.register(tipCell, forCellReuseIdentifier: "TipSliderTableViewCell")
        billDetailsTableView.register(horizontalCell, forCellReuseIdentifier: "HorizontalSelectionTableViewCell")
    }
    
}

// MARK: - UITableViewDataSource
extension BillDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = billDetailsTableView.dequeueReusableCell(withIdentifier:"TipSliderTableViewCell", for: indexPath) as! TipSliderTableViewCell
        return cell
    }
}



// start with 0.00 have it be grey out
// when user starts editing make it turn white
// validate entered number is a valide amount
// valid amount should



