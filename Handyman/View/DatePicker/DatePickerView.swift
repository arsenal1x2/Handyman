//
//  DatePickerView.swift
//  Handyman
//
//  Created by LTT on 213//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class DatePickerView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var chooseDateButton: UIButton!
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
        mainView.layer.borderColor = UIColor(hexString: "2CA4BF").cgColor
        mainView.layer.borderWidth = 1
        mainView.layer.cornerRadius = 6.0
        mainView.clipsToBounds = true
        
    }

}
