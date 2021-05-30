//
//  BillDetailsViewModel.swift
//  Splitz
//
//  Created by Mit Amin on 5/23/21.
//

import Foundation
typealias BillDetailsViewModelOutput = (BillDetailsViewModel.Output) -> ()

struct BillDetailsViewModel {
    
    enum state {
        case automatedEntry
        case manualEntry
        case loading
    }
    
    var billAmount = 210
    var output: BillDetailsViewModelOutput?
    var items: [HorizontalSelectionCellViewModelProtocol] = []
    
    mutating func viewModelDidLoad() {
        items = [HorizontalSelectionCellViewModel(title: "Add Tip Amount", state: .AddTipAmount),
                 HorizontalSelectionCellViewModel(title: "Split", state: .SplitMethod)]
        
        output?(.reloadData)
    }
    
    mutating func didTapItem(at index: Int) {
        if var viewModel = items[index] as? HorizontalSelectionCellViewModel {
            items[index] = viewModel
        }
        output?(.reloadRowAt(index: index))
    }
    
    enum Output {
        case reloadData
        case reloadRowAt(index: Int)
    }
}
