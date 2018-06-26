//
//  BusProvider.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 23/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation

struct BusProvider {
    
    let appData = AppData()
    
    func getBusTimes() -> [Bus] {
        let jsonData = appData.busTimes.data(using: .utf8)!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let buses: [Bus] = try! decoder.decode([Bus].self, from: jsonData)
        return buses
    }
    
}
