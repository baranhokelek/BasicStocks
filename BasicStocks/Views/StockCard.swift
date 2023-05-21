//
//  StockCard.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/9/22.
//

import SwiftUI

struct StockCard: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "photo.artframe").font(.system(size: 50))
                VStack(alignment: .leading) {
                    Text("AAPL").bold().font(.title3)
                    Text("Apple Inc.")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                Spacer()
                Text("-2.51%").bold().foregroundColor(.red).font(.title3)
            }
            Spacer()
            HStack {
                Text("$166.54").font(.title).bold()
                Spacer()
                Text("insert graph here")
            }
        }
        .padding()
        .padding(5)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 30).stroke(.gray))
    }
}

struct StockCard_Previews: PreviewProvider {
    static var previews: some View {
        StockCard().padding()
    }
}
