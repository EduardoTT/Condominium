//
//  Bus.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 15/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation

struct Bus: Codable {
    let type: BusType
    let time: Date
    let period: BusPeriod
}
