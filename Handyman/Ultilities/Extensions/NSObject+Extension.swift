//
//  NSObject+Extension.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

extension NSObject {
    @nonobjc class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    var className: String {
        return type(of: self).className
    }
}
