//
//  FillPayoutViewController.swift
//  Handyman
//
//  Created by LTT on 223//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class FillPayoutViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var mainView: EmailView!
    @IBOutlet weak var requirmentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        let vc = ActivePayoutViewController.instantiateFromStoryboard()
        self.present(vc, animated: true, completion: nil)
    }
    
    func initViews() {
        if Constants.isPrivateUser {
            configCPR()
        } else {
            configCVR()
        }
        mainView.emailTextField.keyboardType = .default
        submitButton.applyCornerRadius()
    }
    
    func configCVR() {
        mainView.iconImageView.image = UIImage(named: "cvr")
        titleLabel.text = "Fill Your CVR"
        requirmentLabel.text = "Set your CVR and get started it."
        mainView.titleLabel.text = "Your Business Number"
    }
    
    func configCPR() {
        mainView.iconImageView.image = UIImage(named: "cpr")
        titleLabel.text = "Fill Your CPR"
        requirmentLabel.text = "Set your CPR and get started it."
        mainView.titleLabel.text = "Your Personal Number"
    }
   
    @IBAction func clickSubmitButton(_ sender: Any) {
    }
}
