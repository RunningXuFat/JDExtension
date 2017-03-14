//
//  JsonToString.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit

class JsonToString: NSObject {
    class func transformDictionaryToString(dictionary: [String: Any]) -> String {
        var jsonData: Data!
        if dictionary.count != 0 {
            do {
                jsonData =  try JSONSerialization.data(withJSONObject: dictionary, options: JSONSerialization.WritingOptions.prettyPrinted)
            }
            catch {
                return "Json转字符串失败！"
            }
        }
        
        return String.init(data: jsonData, encoding: String.Encoding.utf8)!
    }
}
