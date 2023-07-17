//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeViewController()
                .tabItem {
                    Image(systemName: "bitcoinsign.circle")
                    Text("Crypto")
                }
            
            Text("Coming Soon")
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Stock Market")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
