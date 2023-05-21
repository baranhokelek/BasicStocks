//
//  StockModel.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 2/19/23.
//

import Foundation

struct StockModel: Hashable {
    let symbol: String              // AAPL
    let description: String?        // Apple Inc
    let currentPrice: Double?       // 150.20
    let percentageChange: Double?
    let candles: [CGFloat]
}
