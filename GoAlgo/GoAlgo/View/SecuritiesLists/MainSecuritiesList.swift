//
//  MainSecuritiesList.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 06.12.2023.
//

import SwiftUI

struct MainSecuritiesList: View {
    
    var securitiesManager = SecuritiesManager(jsonName: "securities")

    var body: some View {
        List {
            ForEach(securitiesManager.securities!, id: \.id) { security in
                CellView(securities: security)
            }
        }
    }
}

#Preview {
    MainSecuritiesList()
}
