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
enum State {
    case AddTipAmount
    case SplitMethod
}

struct ButtonModel {
    var title: String
    var isSelected: Bool = false
}


struct HorizontalSelectionCellViewModel: HorizontalSelectionCellViewModelProtocol {
    var cellIdentifier: String = "HorizontalSelectionTableViewCell"
    var title: String
    var state: State
    
    init(title: String, state: State) {
        self.title = title
        self.state = state
    }
    
    var tipItems = [ButtonModel(title: "10%"), ButtonModel(title: "20%", isSelected: true), ButtonModel(title: "Enter Manually")]
    var splitItems = [ButtonModel(title: "Equally"), ButtonModel(title: "By Consumption")]
}
