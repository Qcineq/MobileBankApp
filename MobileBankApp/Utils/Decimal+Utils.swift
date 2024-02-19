//
//  DecimalUtils.swift
//  MobileBankApp
//
//  Created by Jakub Kuciński on 17/02/2024.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
