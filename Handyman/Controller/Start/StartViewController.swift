//
//  StartViewController.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var continueAsCustomerButton: UIButton!
    @IBOutlet weak var continueAsHandymanButton: UIButton!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueAsCustomerButton.applyCornerRadius()
        continueAsHandymanButton.applyCornerRadius()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickContinueAsHandymanButton(_ sender: Any) {
        pushLoginViewController()
    }
    
    @IBAction func clickContinueasCustomerButton(_ sender: Any) {
        pushLoginViewController()
    }
    
    func pushLoginViewController() {
        let vc = RegisterViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
