//
//  TutorialViewController.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var tutorialView: UIView!
    @IBOutlet weak var tutorialImageView: UIImageView!
    @IBOutlet weak var buttonSkip: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initViews()
    }
    
    private func initViews() {
        tutorialView.applyCornerRadius()
    }

    @IBAction func clickButtonSkip(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "StartViewController", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "RootViewController")
        self.present(viewcontroller, animated: true, completion: nil)
    }
    
    func configure(imageName: String, tutorialTitle: String) {
        tutorialImageView.image = UIImage(named: imageName)
        tutorialLabel.text = tutorialTitle
    }

}
