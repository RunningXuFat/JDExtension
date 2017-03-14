//
//  UIColorExtension.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit

public extension UIColor {
    class func color(withR r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor.init(red: r / 255, green: g / 255, blue: b / 255, alpha: alpha)
    }
}
