//
//  ActiveNewAccountViewController.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class ActiveNewAccountViewController: UIViewController {

    @IBOutlet weak var businessUsersButton: UIButton!
    @IBOutlet weak var privateUserButton: UIButton!
    @IBOutlet weak var navigationBarView: NavigationBarView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()

        // Do any additional setup after loading the view.
    }
    
    func initViews() {
        businessUsersButton.applyCornerRadius()
        privateUserButton.applyCornerRadius()
        navigationBarView.delegate = self
    }
}
