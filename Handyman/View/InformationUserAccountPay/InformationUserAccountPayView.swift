//
//  InformationUserAccountPayView.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class InformationUserAccountPayView: UIView {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet var contentView: UIView!
    
    
    
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
        inputTextField.layer.borderWidth = 1
        inputTextField.layer.borderColor = UIColor(hexString: "2CA4BF").cgColor
        inputTextField.layer.cornerRadius = 6.0
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 2.0))
        inputTextField.leftView = leftView
        inputTextField.leftViewMode = .always
    }
    

}
