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
        billDetailsTableView.separatorStyle = .none

        let tipCell = UINib(nibName: TipSliderTableViewCell().identifier, bundle: nil)
        billDetailsTableView.register(tipCell, forCellReuseIdentifier: TipSliderTableViewCell().identifier)
        
        let addItemCell = UINib(nibName: AddItemTableViewCell().identifier, bundle: nil)
        billDetailsTableView.register(addItemCell, forCellReuseIdentifier: AddItemTableViewCell().identifier)
        
        let itemCell = UINib(nibName: ItemTableViewCell().identifier, bundle: nil)
        billDetailsTableView.register(itemCell, forCellReuseIdentifier: ItemTableViewCell().identifier)
    }
    
}

// MARK: - UITableViewDataSource
extension BillDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = billDetailsTableView.dequeueReusableCell(withIdentifier: TipSliderTableViewCell().identifier, for: indexPath) as! TipSliderTableViewCell
            return cell
        } else if indexPath.row == 1 {
            let cell = billDetailsTableView.dequeueReusableCell(withIdentifier: AddItemTableViewCell().identifier, for: indexPath) as! AddItemTableViewCell
            return cell
        } else {
            let cell = billDetailsTableView.dequeueReusableCell(withIdentifier: ItemTableViewCell().identifier, for: indexPath) as! ItemTableViewCell
            cell.titleLabel.text = "Item \(indexPath.row - 1)"
            cell.priceLabel.text = "$ \(model.billAmount / model.numberOfCells - 3)"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            model.numberOfCells += 1
        }
        tableView
            .reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            model.numberOfCells -= 1
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        }
    }
}



// start with 0.00 have it be grey out
// when user starts editing make it turn white
// validate entered number is a valide amount
// valid amount should



