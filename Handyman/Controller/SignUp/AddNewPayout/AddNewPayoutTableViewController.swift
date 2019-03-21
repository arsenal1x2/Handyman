//
//  AddNewPayoutTableViewController.swift
//  Handyman
//
//  Created by LTT on 213//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class AddNewPayoutTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        default:
            return 3
        }
    }
 }
