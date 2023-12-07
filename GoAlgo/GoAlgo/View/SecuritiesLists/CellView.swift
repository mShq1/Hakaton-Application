//
//  CellView.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 06.12.2023.
//

import SwiftUI

struct CellView: View {
    
    let securities: Security
    
    var body: some View {
        VStack {
            HStack {
                Text(securities.ticker)
                    .font(.headline)
                Spacer()
                Text(String(securities.priceNow))
                    .font(.headline)
            }
//            .foregroundStyle(.white)
            HStack {
                Text(securities.fullName)
                    .font(.subheadline)
//                    .foregroundStyle(.white)
                Spacer()
                Text(String(securities.priceDifferent))
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 4))
                    .background(RoundedRectangle(cornerRadius: 6))
                    .foregroundStyle(securities.priceDifferent >= 0 ? .green : .red)
            }
        }
    }
}

#Preview {
    CellView(securities: Security(
        id: 1,
        ticker: "AAPL",
        fullName: "Apple Inc.",
        priceNow: 192.79,
        priceDifferent: -0.42))
}
