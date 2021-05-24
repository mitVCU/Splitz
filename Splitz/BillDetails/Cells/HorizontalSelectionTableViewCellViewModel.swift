//
//  HorizontalSelectionTableViewCellViewModel.swift
//  Splitz
//
//  Created by Mit Amin on 5/23/21.
//

import Foundation
protocol HorizontalSelectionCellViewModelProtocol {
    var cellIdentifier: String { get }
}


struct HorizontalSelectionCellViewModel: HorizontalSelectionCellViewModelProtocol {
    var cellIdentifier: String = "HorizontalSelectionTableViewCell"
    var title: String
    
    enum state {
        case AddTipAmount
        case SplitMethod
    }
    
    init(title: String) {
        self.title = title
    }
}
