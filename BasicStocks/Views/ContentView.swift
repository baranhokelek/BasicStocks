//
//  ContentView.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    @State private var searchSheet = false
    var body: some View {
        VStack {
            // Top view
            HeaderView(showSheet: $searchSheet)
            // Portfolio card
            PortfolioCard()
            // Watchlist
            WatchlistView()
            
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $searchSheet) {
            SearchStockView()
        }
        .onAppear{
            APIRequest.instance.getSymbolQuote(symbol: "AAPL") { returnedQuote in
                print(returnedQuote ?? "ERROR")
            }
            APIRequest.instance.getSymbolLookup(searchQuery: "AAPL") { returnedSymbol in
                print(returnedSymbol ?? "ERROR")
            }
            APIRequest.instance.getCandles(symbol: "AAPL", hourLength: 8) { returnedCandles in
                print(returnedCandles ?? "ERROR")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
