//
//  NavigationBarView.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit
@objc protocol NavigationBarDelegate {
    func navigationBarDidClickedBackButton()
}

class NavigationBarView: UIView {

    @IBOutlet var contentView: UIView!
    weak var delegate: NavigationBarDelegate?
    
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
    }

    @IBAction func clickBackButton(_ sender: Any) {
        delegate?.navigationBarDidClickedBackButton()
    }
}
