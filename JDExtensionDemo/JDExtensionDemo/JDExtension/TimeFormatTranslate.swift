//
//  TimeFormatTranslate.swift
//  JDExtensionDemo
//
//  Created by 徐建东 on 2017/3/14.
//  Copyright © 2017年 徐建东. All rights reserved.
//

import UIKit

public class TimeFormatTranslate: NSObject {
    class func getLocalDateFormTimeIntervalSince1970(withTimeInterval timeInterval: String) -> String {
        var date: NSDate?
        if timeInterval.characters.count > 9 {
            let index = timeInterval.index(timeInterval.startIndex, offsetBy: 10)
            let timeString = timeInterval.substring(to: index)
            date = NSDate.init(timeIntervalSince1970: TimeInterval.init(timeString)!)
        }
        
        return TimeFormatTranslate.getLocalDateFormateUTCDate(withUTCDate: date!)
    }
    
    class func getLocalDateFormateUTCDate(withUTCDate date: NSDate) -> String {
        // 设置源日期时区
        let sourceTimeZone = NSTimeZone.init(abbreviation: "UTC")
        // 设置转换后的目标日期时区
        let destinationTimeZone = NSTimeZone.local
        // 得到源日期与世界标准时间的偏移量
        let sourceGMToffset = sourceTimeZone?.secondsFromGMT(for: date as Date)
        // 目标日期与本地时区的偏移量
        let destinationGMTOffset = destinationTimeZone.secondsFromGMT(for: date as Date)
        // 得到时间偏移量差值
        let interval = destinationGMTOffset - sourceGMToffset!
        // 转化为现在的时间
        let destinationDateNow = NSDate.init(timeInterval: TimeInterval(interval), since: date as Date)
        let timeString = String.init(format: "%@", destinationDateNow)
        let returnTimeString = timeString.substring(to: timeString.index(timeString.startIndex, offsetBy: 19))
        return returnTimeString
    }
    
}
