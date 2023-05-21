//
//  PortfolioCard.swift
//  BasicStocks
//
//  Created by Baran Berkay Hökelek on 12/4/22.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portfolio Value").foregroundColor(Color.gray).font(.title2)
            HStack(alignment: .top) {
                Text("$123.45").font(.system(size: 50)).bold().foregroundColor(.white)
                Text("1.7%").font(.title3).bold().foregroundColor(.lightGreen)
            }
            Spacer()
            HStack {
                Button {
                    
                } label: {
                    Text("Deposit").foregroundColor(.white).padding().padding(.horizontal).background(RoundedRectangle(cornerRadius: 10).fill(Color.lightGreen))
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Withdraw").foregroundColor(.white).padding().padding(.horizontal).background(RoundedRectangle(cornerRadius: 10).stroke(.gray))
                }

            }
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30).fill(Color.darkBlue)
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard().padding()
    }
}
