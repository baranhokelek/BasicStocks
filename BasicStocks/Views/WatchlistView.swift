//
//  WatchlistView.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/9/22.
//

import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Watchlist").font(.title).bold().foregroundColor(.darkBlue)
                Spacer()
            }
            // Stock Cards
            ScrollView {
                VStack {
                    StockCard()
                    StockCard()
                }
            }.padding(3)
        }
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView().padding()
    }
}
