//
//  PasswordView.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class PasswordView: UIView {

    @IBOutlet weak var iconShowSecureTextImageView: UIImageView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var textSecureTextField: UITextField!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    var passwordIsHidden: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    private func initView() {
        _ = loadViewFromNib()
        self.backgroundColor = UIColor.clear
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mainView.applyCornerRadius()
    }

    @IBAction func clickButtonShowTextSecure(_ sender: Any) {
        if passwordIsHidden == true {
            textSecureTextField.isSecureTextEntry = false
            iconShowSecureTextImageView.image = UIImage(named: "eye2")
            
        } else {
            textSecureTextField.isSecureTextEntry = true
            iconShowSecureTextImageView.image = UIImage(named: "eye")
        }
        passwordIsHidden = !passwordIsHidden
    }
}
