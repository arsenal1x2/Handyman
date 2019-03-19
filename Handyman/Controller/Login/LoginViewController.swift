//
//  LoginViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var navigationBarView: NavigationBarView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initView() {
        loginButton.applyCornerRadius()
        emailView.applyCornerRadius()
        passwordView.applyCornerRadius()
        navigationBarView.delegate = self
    }

}

extension LoginViewController: NavigationBarDelegate {
    func navigationBarDidClickedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
