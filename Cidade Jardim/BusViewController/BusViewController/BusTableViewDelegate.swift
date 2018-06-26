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
    
    var busColor: [BusType:UIColor] = [
        .Alvorada : UIColor(red: 229/255, green: 184/255, blue: 184/255, alpha: 1),
        .RioDesign : UIColor(red: 246/255, green: 166/255, blue: 104/255, alpha: 1),
        .Metro : UIColor(red: 198/255, green: 217/255, blue: 240/255, alpha: 1),
        .Metro_Semi_Expresso : UIColor(red: 133/255, green: 170/255, blue: 210/255, alpha: 1),
        .Metro_Expresso : UIColor(red: 34/255, green: 74/255, blue: 123/255, alpha: 1),
        .Jardineira : UIColor(red: 148/255, green: 206/255, blue: 88/255, alpha: 1)
    ]
    
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
        cell.contentView.backgroundColor = busColor[currentBus.type]
        return cell
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return viewModel.busGrouped.compactMap({ $0.first?.time }).map({ dateFormatter.string(from: $0) })
    }
}
