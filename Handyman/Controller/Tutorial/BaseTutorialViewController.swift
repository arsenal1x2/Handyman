//
//  BaseTutorialViewController.swift
//  Handyman
//
//  Created by LTT on 213//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class BaseTutorialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickButtonSkip(_ sender: Any) {
        self.dismiss(animated: true) {
            UserDefaults.standard.set(true, forKey: Constants.UserDefaultkeys.IsSeenTutorialViewController)
            
        }
    }
  

}
