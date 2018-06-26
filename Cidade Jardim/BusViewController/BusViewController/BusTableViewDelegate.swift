//
//  BusTableViewDelegate.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 23/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation
import UIKit

class BusTableViewControllerDelegate: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var viewModel: BusViewModel!
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        dateFormatter.dateFormat = "HH:mm"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.busGrouped[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.busGrouped.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "busViewControllerCell", for: indexPath)
        let currentBus = viewModel.busGrouped[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(currentBus.type)"
        
        cell.detailTextLabel?.text = dateFormatter.string(from: currentBus.time)
        return cell
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return viewModel.busGrouped.compactMap({ $0.first?.time }).map({ dateFormatter.string(from: $0) })
    }
}
