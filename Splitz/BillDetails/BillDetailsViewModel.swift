//
//  BillDetailsViewModel.swift
//  Splitz
//
//  Created by Mit Amin on 5/23/21.
//

import Foundation

struct BillDetailsViewModel {
    
    enum state {
        case automatedEntry
        case manualEntry
        case loading
    }
    
    var billAmount = 210
    var numberOfCells = 2

}
