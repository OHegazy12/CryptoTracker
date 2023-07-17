//
//  HottestCurrencyViewController.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI

struct HottestCurrencyViewController: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Highest Risers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topRisingCrypto) { crypto in
                        HottestCurrency(crypto: crypto)
                    }
                }
            }
        }
        .padding()
    }
}

struct HottestCurrencyViewController_Previews: PreviewProvider {
    static var previews: some View {
        HottestCurrencyViewController(viewModel: HomeViewModel())
    }
}
