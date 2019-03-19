//
//  EmailView.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class EmailView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
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
    }
}
