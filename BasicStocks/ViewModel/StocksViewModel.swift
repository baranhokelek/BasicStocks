//
//  StocksViewModel.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 2/19/23.
//

import Foundation
import SwiftUI

class StocksViewModel: ObservableObject {
    var tickers = ["AAPL", "NVDA", "MSFT"]
    @Published var stocks: [StockModel] = [StockModel]()
    init() {
        self.fetchStockData()
    }
    public func fetchStockData() {
        for ticker in tickers {
            APIRequest.instance.getSymbolLookup(searchQuery: ticker) { returnedLookup in
                APIRequest.instance.getSymbolQuote(symbol: ticker) { returnedQuote in
                    APIRequest.instance.getCandles(symbol: ticker, hourLength: 12) { returnedCandles in
                        let candleArray: [CGFloat] = returnedCandles?.c.map {CGFloat($0)} ?? []
                        let stockInfo = returnedLookup?.result[0]
                        let newStock = StockModel(symbol: ticker, description: stockInfo?.description, currentPrice: returnedQuote?.c, percentageChange: returnedQuote?.dp, candles: candleArray)
                        DispatchQueue.main.async {
                            self.stocks.append(newStock)
                        }
                    }
                }
            }
        }
    }
}
