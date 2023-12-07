//
//  FavoriteSecurities.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 07.12.2023.
//

import SwiftUI

struct FavoriteSecurities: View {
    var securitiesManager = SecuritiesManager(jsonName: "favorites")

    var body: some View {
        List {
            ForEach(securitiesManager.securities!, id: \.id) { security in
                CellView(securities: security)
            }
        }
    }
}

#Preview {
    FavoriteSecurities()
}
