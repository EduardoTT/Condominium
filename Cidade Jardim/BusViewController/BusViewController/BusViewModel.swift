//
//  BusViewModel.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 23/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation

class BusViewModel: NSObject {
    
    private let provider = BusProvider()
    
    var currentPeriod = BusPeriod.Workday {
        didSet {
            busGrouped = setupBusGrouped()
        }
    }
    
    var busGrouped: [[Bus]] = []
        
    private var buses: [Bus]
    
    override init() {
        buses = provider.getBusTimes()
        super.init()
        busGrouped = setupBusGrouped()
    }

    private func setupBusGrouped() -> [[Bus]] {
        var busGrouped = [[Bus]]()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        var lastBusHour = dateFormatter.date(from: "00")!
        let calendar = Calendar.current
        let filteredBuses = buses.filter({ $0.period == currentPeriod })
        for bus in filteredBuses {
            if calendar.component(.hour, from: bus.time) != calendar.component(.hour, from: lastBusHour) {
                var newGroup = [Bus]()
                newGroup.append(bus)
                busGrouped.append(newGroup)
            } else {
                busGrouped[busGrouped.count - 1].append(bus)
            }
            lastBusHour = bus.time
        }
        return busGrouped
    }
}
