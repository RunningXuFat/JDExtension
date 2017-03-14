//
//  NSStringExtension.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit

extension NSString {
    func getHeight(withContainerWidth containerWidth: CGFloat) -> CGFloat {
        let stringRect = self.boundingRect(with: CGSize.init(width: containerWidth, height: 10000), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 11)], context: nil)
        
        return stringRect.height < 10 ? 10 : stringRect.height
    }
}
