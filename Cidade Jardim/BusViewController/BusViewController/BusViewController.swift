//
//  BusViewController.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 15/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import UIKit

class BusViewController: UIViewController {

    @IBOutlet var busTableViewControllerDelegate: BusTableViewControllerDelegate!
   
    @IBOutlet var busViewModel: BusViewModel!
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        busTableViewControllerDelegate.viewModel = busViewModel
    }
    
    @IBAction func didChangeSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            busViewModel.currentPeriod = .Workday
        } else {
            busViewModel.currentPeriod = .Weekend
        }
        tableView.reloadData()
    }
    
}
