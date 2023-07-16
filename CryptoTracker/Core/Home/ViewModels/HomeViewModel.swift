//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/15/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var crypto = [Crypto]()
    @Published var topRisingCrypto = [Crypto]()
    
    init() {
        fetchCryptoData()
    }
    
    func fetchCryptoData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print(response.statusCode)
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let crypto = try JSONDecoder().decode([Crypto].self, from: data)
                DispatchQueue.main.async {
                    self.crypto = crypto
                    self.configureHottestRisingCrypto()
                }
            }
            catch let error {
                print(error.localizedDescription)
            }
        }
        .resume()
    }
    
    func configureHottestRisingCrypto() {
        let biggestRisers = crypto.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topRisingCrypto = Array(biggestRisers.prefix(5))
    }
}
