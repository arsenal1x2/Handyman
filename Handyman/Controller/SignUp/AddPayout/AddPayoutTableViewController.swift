//
//  AddPayoutViewController.swift
//  Handyman
//
//  Created by LTT on 213//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class AddPayoutTableViewController: UITableViewController {

    
    @IBOutlet weak var typeView: DatePickerView!
    @IBOutlet weak var emailView: InformationUserAccountPayView!
   
    @IBOutlet weak var dateOfBirthView: DatePickerView!
    @IBOutlet weak var portalCodeView: InformationUserAccountPayView!
    @IBOutlet weak var addressView: InformationUserAccountPayView!
    @IBOutlet weak var lastnameView: InformationUserAccountPayView!
    @IBOutlet weak var firstnameView: InformationUserAccountPayView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    private func initViews() {
        emailView.label.text = "Email"
        typeView.titleLabel.text = "Type"
        typeView.icon.image = UIImage(named: "dropdown")
        
        portalCodeView.label.text = "Portal Code"
        addressView.label.text = "Address"
        lastnameView.label.text = "Lastname"
        firstnameView.label.text = "Firstname"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    @IBAction func clickCheckmarkButton(_ sender: Any) {
        let vc = AddNewPayoutTableViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      
            return 7
        
    }
    
   
 }
