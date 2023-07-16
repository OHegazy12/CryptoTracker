//
//  HomeViewController.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI

struct HomeViewController: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {

                // Hottest currencies
                HottestCurrencyViewController(viewModel: viewModel)
                
                Divider()
                
                // All currencies
                AllCurrencies(viewModel: viewModel)
            }
            .navigationTitle("Live Feed")
        }
    }
}

struct HomeViewController_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewController()
    }
}
