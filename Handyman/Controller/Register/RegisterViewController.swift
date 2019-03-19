//
//  RegisterViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
   
    @IBOutlet weak var navigationBarView: NavigationBarView!
    @IBOutlet weak var loginFacebookButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        // Do any additional setup after loading the view.
    }
    
    private func initView() {
        loginFacebookButton.applyCornerRadius()
        navigationBarView.delegate = self
    }
   
    @IBAction func clickLoginButton(_ sender: Any) {
        let vc = LoginViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickSignUpButton(_ sender: Any) {
        let vc = SignUpViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
