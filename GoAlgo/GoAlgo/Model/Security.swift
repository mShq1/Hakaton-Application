//
//  Securities.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 06.12.2023.
//

import Foundation

struct Security: Codable {
    let id: Int
    let ticker: String
    let fullName: String
    let priceNow: Double
    let priceDifferent: Double
}
