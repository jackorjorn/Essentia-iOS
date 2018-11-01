//
//  AssetPrice.swift
//  Essentia
//
//  Created by Pavlo Boiko on 10/5/18.
//  Copyright © 2018 Essentia-One. All rights reserved.
//

import Foundation

struct AssetPrice {
    var currency: FiatCurrency
    var asset: AssetInterface
    var price: Double
    var yesterdayPrice: Double
}
