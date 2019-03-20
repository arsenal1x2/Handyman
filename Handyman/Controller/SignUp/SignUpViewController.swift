//
//  SignUpViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameView: EmailView!
    @IBOutlet weak var emailView: EmailView!
    @IBOutlet weak var navigationBarView: NavigationBarView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var rePasswordView: PasswordView!
    @IBOutlet weak var passwordView: PasswordView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()

        // Do any additional setup after loading the view.
    }
    @IBAction func clickSignUpButton(_ sender: Any) {
        let vc = ActiveNewAccountViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func initView() {
        navigationBarView.delegate = self
        signUpButton.applyCornerRadius()
        passwordView.titleLabel.text = "Password"
        nameView.titleLabel.text = "Your Name"
        rePasswordView.titleLabel.text = "Re - Password"
        nameView.iconImageView.image = UIImage(named: "person")
        self.addNotificationKeyBoard()
    }
}
