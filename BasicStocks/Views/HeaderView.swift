//
//  HeaderView.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/3/22.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showSheet: Bool
    var body: some View {
        HStack {
            Text("My Stocks")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.darkBlue)
            Spacer()
            Button {
                showSheet.toggle()
            } label: {
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.darkBlue_test).font(.largeTitle)
            }
        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView(showSheet: Binding<false>).padding()
//    }
//}
