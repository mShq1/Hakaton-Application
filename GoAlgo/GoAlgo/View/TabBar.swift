//
//  TabBar.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 06.12.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationStack {
                MainSecuritiesList()
                    .navigationBarBackButtonHidden(true)
                    .navigationTitle("Акции")
            }
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Акции")
                }
            NavigationStack {
                FavoriteSecurities()
                    .navigationBarBackButtonHidden(true)
                    .navigationTitle("Подписки")
            }
                .tabItem {
                    Image(systemName: "star")
                    Text("Подписки")
                }
                
        }
        .tint(.orange
        )
    }
}

#Preview {
    TabBar()
}
