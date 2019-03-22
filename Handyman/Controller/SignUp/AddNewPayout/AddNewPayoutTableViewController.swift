//
//  AddNewPayoutTableViewController.swift
//  Handyman
//
//  Created by LTT on 213//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class AddNewPayoutTableViewController: UITableViewController {

    @IBOutlet weak var countryView: DatePickerView!
    @IBOutlet weak var accountRoutingView: InformationUserAccountPayView!
    @IBOutlet weak var accountNumberView: InformationUserAccountPayView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
   
    private func initViews() {
        countryView.icon.image = UIImage(named: "dropdown")
        countryView.titleLabel.text = "Country"
        accountNumberView.label.text = "Account Number"
        accountRoutingView.label.text = "Account Routing"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    @IBAction func clickCkeckmarkButton(_ sender: Any) {
        let vc = FillPayoutViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
 }
