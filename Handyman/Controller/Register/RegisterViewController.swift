//
//  RegisterViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
   
    @IBOutlet weak var requimentLabel: UILabel!
    @IBOutlet weak var loginFacebookButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    private func initView() {
        loginFacebookButton.applyCornerRadius()
        
        self.addNotificationKeyBoard()
        let formattedString = NSMutableAttributedString()
        formattedString
            .normal("Please ")
            .bold("Login ")
            .normal("if you have an account. And ")
            .bold("Signup ")
            .normal("if you are a new member.")
        requimentLabel.attributedText = formattedString
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
