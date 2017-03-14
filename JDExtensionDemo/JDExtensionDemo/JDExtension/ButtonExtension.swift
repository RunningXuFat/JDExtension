//
//  ButtonExtension.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit

public extension UIButton {
    class func button(withNormalImage normalImage: UIImage?, highlightedImage: UIImage?) -> UIButton {
        let button = UIButton.init()
        if let normal = normalImage {
            button.setImage(normal, for: .normal)
        }
        if let selected = highlightedImage {
            button.setImage(selected, for: .highlighted)
        }
        button.sizeToFit()
        return button
    }
}
