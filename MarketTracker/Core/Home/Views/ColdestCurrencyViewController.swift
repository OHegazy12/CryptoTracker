//
//  ColdestCurrencyViewController.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/16/23.
//

import SwiftUI

struct ColdestCurrencyViewController: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biggest Fallers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topFallingCrypto) { crypto in
                        HottestCurrency(crypto: crypto)
                    }
                }
            }
        }
        .padding()
    }
}

struct ColdestCurrencyViewController_Previews: PreviewProvider {
    static var previews: some View {
        ColdestCurrencyViewController(viewModel: HomeViewModel())
    }
}
