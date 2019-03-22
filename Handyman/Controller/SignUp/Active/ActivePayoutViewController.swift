//
//  ActivePayoutViewController.swift
//  Handyman
//
//  Created by LTT on 223//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class ActivePayoutViewController: UIViewController {

    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var backgroundCardView: UIView!
    @IBOutlet weak var activeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }
    
    private func initViews() {
        noButton.applyCornerRadius()
        noButton.layer.borderWidth = 1
        noButton.layer.borderColor = UIColor.red.cgColor
        yesButton.applyCornerRadius()
        backgroundCardView.applyCornerRadius()
    }

    @IBAction func clickButtonClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickYesButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickNoButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
