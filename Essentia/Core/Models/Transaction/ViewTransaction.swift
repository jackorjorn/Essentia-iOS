//
//  ViewTransaction.swift
//  Essentia
//
//  Created by Pavlo Boiko on 10/23/18.
//  Copyright © 2018 Essentia-One. All rights reserved.
//

import Foundation

struct ViewTransaction {
    var hash: String
    var address: String
    var ammount: NSAttributedString
    var status: TransactionStatus
    var type: TransactionType
    var date: TimeInterval
    
    var stringDate: String {
        let txDate = Date(timeIntervalSince1970: date)
        let dateFormatter = DateFormatter(formate: DateFormat.dayMonth)
        return dateFormatter.string(from: txDate)
    }
}