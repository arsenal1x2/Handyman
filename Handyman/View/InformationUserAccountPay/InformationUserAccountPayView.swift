//
//  InformationUserAccountPayView.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class InformationUserAccountPayView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var mainView: UIView!
    
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
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = UIColor(hexString: "").cgColor
        
    }
    

}
