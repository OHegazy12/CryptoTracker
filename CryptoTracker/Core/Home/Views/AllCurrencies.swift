//
//  AllCurrencies.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI

struct AllCurrencies: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All CrytoCurrencies")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Crypto")
                
                Spacer()
                
                Text("Value")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.crypto) { crypto in
                        CurrencyRow(crypto: crypto)
                    }
                }
            }
        }
    }
}

//struct AllCurrencies_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCurrencies()
//    }
//}
