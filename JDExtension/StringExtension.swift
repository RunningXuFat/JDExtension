//
//  StringExtension.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit


public extension String {
    /// 检验手机号是否正确
    func isAvailableAsPhoneNumber() -> Bool {
        let mobileRegex = "^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$"
        let chinaMobileRegex = "^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$"
        let chinaUnicomRegex = "^1(3[0-2]|5[256]|8[56])\\d{8}$"
        let chinaTelecomRegex = "^1((33|53|8[09])[0-9]|349)\\d{7}$"
        
        let mobilePredicate = NSPredicate.init(format: "SELF MATCHES %@", mobileRegex)
        let chinaMobilePredicate = NSPredicate.init(format: "SELF MATCHES %@", chinaMobileRegex)
        let chinaUnicomPredicate = NSPredicate.init(format: "SELF MATCHES %@", chinaUnicomRegex)
        let chinaTelecomPredicate = NSPredicate.init(format: "SELF MATCHES %@", chinaTelecomRegex)
        
        if mobilePredicate.evaluate(with: self) || chinaMobilePredicate.evaluate(with: self) || chinaUnicomPredicate.evaluate(with: self) || chinaTelecomPredicate.evaluate(with: self){
            return true
        }
        
        return false
    }
    
    /// 检验邮箱是否正确
    func isAvailableAsEmail() -> Bool {
        let eMailRegex = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"
        let eMailPredicate = NSPredicate.init(format: "SELF MATCHES %@", eMailRegex)
        if eMailPredicate.evaluate(with: self) {
            return true
        }
        
        return false
    }
    
    /// UTF8编码，这个方法说实话我也不太知道这么用对不对，反正效果是有的
    func encodeToUTF8() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
    }
    
    /// 截取字符串前多少个字符
    func cutOutString(to: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: to)
        let str = self.substring(to: index)
        return str
    }
    
    func md5() ->String!{
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.deinitialize()
        return String(format: hash as String)
    }
}
