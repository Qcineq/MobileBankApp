//
//  Date+Utils.swift
//  MobileBankApp
//
//  Created by Jakub Kuciński on 23/02/2024.
//

import Foundation

extension Date {
    static var bankAppDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "CET")
        return formatter
    }
    
    var dayMonthYearString: String {
        let dateFormatter = Date.bankAppDateFormatter
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
