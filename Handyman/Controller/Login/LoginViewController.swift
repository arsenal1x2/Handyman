//
//  LoginViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailView: EmailView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var navigationBarView: NavigationBarView!
    @IBOutlet weak var passwordView: PasswordView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickForgotPasswordButton(_ sender: Any) {
        let vc = ForgotPasswordViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func initView() {
        loginButton.applyCornerRadius()
        navigationBarView.delegate = self
        passwordView.titleLabel.text = "Password"
        self.addNotificationKeyBoard()
    }
}


