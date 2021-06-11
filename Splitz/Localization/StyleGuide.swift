//
//  StyleGuide.swift
//  Splitz
//
//  Created by Mit Amin on 6/5/21.
//

import UIKit

struct App {
    struct Fonts {
        static let title = UIFont.systemFont(ofSize: 32)
        static let heading = UIFont.systemFont(ofSize: 24)
        static let subheading = UIFont.systemFont(ofSize: 20)
        static let body = UIFont.systemFont(ofSize: 16)
        static let small = UIFont.systemFont(ofSize: 14)
    }

    struct Colors {
        static let title = UIColor.blue
        static let heading = UIColor.black
        static let background = UIColor.white
        static let accentColor = UIColor(hexString: "30E8E8")
        static let textColor = UIColor(hexString: "AEAFBC")
    }
}
