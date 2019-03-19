//
//  ForgotPasswordViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailView: EmailView!
    @IBOutlet weak var navigationBarView: NavigationBarView!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        // Do any additional setup after loading the view.
    }
    
    private func initView() {
        navigationBarView.delegate = self
        sendButton.applyCornerRadius()
    }
}
