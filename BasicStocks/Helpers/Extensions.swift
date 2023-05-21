//
//  Extensions.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/3/22.
//

import Foundation
import UIKit
import SwiftUI

extension Color {
    public static var darkBlue:Color {
        return Color(uiColor: UIColor(red: 3/255, green: 49/255, blue: 75/255, alpha: 1.0))
    }
    public static var darkBlue_test:Color = Color(uiColor: UIColor(red: 3/255, green: 49/255, blue: 75/255, alpha: 1.0))
    public static var lightGreen:Color {
        return Color(uiColor: UIColor(red: 30/255, green: 204/255, blue: 151/255, alpha: 1.0))
    }
    public static var lightGreen_test:Color = Color(uiColor: UIColor(red: 30/255, green: 204/255, blue: 75/255, alpha: 1.0))
}


extension Array where Element == CGFloat {
    var normalizedValues: [CGFloat] {
        if let min = self.min(), let max = self.max() {
            return self.map({($0 - min) / (max - min)})
        }
        return []
    }
}
