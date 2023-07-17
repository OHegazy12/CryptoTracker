//
//  Double.swift
//  CryptoTracker
//
//  Created by Omar Hegazy on 7/16/23.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func CurrencyConverter() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func PercentConverter() -> String {
        return numberFormatter.string(for: self)! + "%" 
    }
}
