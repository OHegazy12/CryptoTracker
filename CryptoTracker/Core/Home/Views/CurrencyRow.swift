//
//  CurrencyRow.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI
import Kingfisher

struct CurrencyRow: View {
    let crypto: Crypto
    
    var body: some View {
        HStack {
            // Market Cap Rank
            
            Text("\(crypto.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // Image
            
            KFImage(URL(string: crypto.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // Currency name
            
            VStack(alignment: .leading, spacing: 4) {
                Text(crypto.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(crypto.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 5)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // Currency price
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(crypto.currentPrice.CurrencyConverter())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(crypto.priceChangePercentage24H.PercentConverter())
                    .font(.caption)
                    .padding(.leading, 5)
                    .foregroundColor(crypto.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//struct CurrencyRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CurrencyRow()
//    }
//}
