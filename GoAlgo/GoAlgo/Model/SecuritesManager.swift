//
//  SecuritesManager.swift
//  GoAlgo
//
//  Created by Глеб Писарев on 06.12.2023.
//

import Foundation

class SecuritiesManager {
    var securities: [Security]?
    
    init(jsonName: String) {
        self.securities = fetchData(jsonName: jsonName)
    }
    
    func fetchData(jsonName: String) -> [Security]? {
        if let path = Bundle.main.path(forResource: jsonName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let securities = try JSONDecoder().decode([Security].self, from: data)
                return securities
            } catch {
                print("Ошибка при загрузке данных из JSON файла: \(error.localizedDescription)")
            }
        } else {
            print("Файл 'securities.json' не найден в директории проекта.")
        }
        
        return nil
    }
}
