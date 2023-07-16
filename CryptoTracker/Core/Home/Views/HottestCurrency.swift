//
//  HottestCurrency.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI
import Kingfisher

struct HottestCurrency: View {
    let crypto: Crypto
    
    var body: some View {
        VStack(alignment: .leading) {
            // Image
            
            KFImage(URL(string: crypto.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // Description of currency
            
            HStack(spacing: 2) {
                Text(crypto.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(crypto.currentPrice.CurrencyConverter())
                    .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
            }
            
            // Currency data
            
            Text(crypto.priceChangePercentage24H.PercentConverter())
                .font(.title2)
                .foregroundColor(crypto.priceChangePercentage24H > 0 ? .green : .red)
            
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2))
    }
}

//struct HottestCurrency_Previews: PreviewProvider {
//    static var previews: some View {
//        HottestCurrency()
//    }
//}
