//
//  NSDate-Extension.swift
//  时间处理demo
//
//  Created by xiaofans on 16/8/11.
//  Copyright © 2016年 xiaofan. All rights reserved.
//  外界直接调用 NSDate.createrDateString(传入起始时间)
//

import Foundation

extension NSDate {
    class func createrDateString(createAt : String) -> String {
        // 创建时间格式化对象
        let fmt = NSDateFormatter()
        fmt.dateFormat = "MM dd HH:mm:ss Z yyyy"
        // 国际时间格式
        fmt.locale = NSLocale(localeIdentifier: "en")
        
        // 将字符串时间转成 NSDate
        guard let createDate = fmt.dateFromString(createAt) else {
            return ""
        }
        
        // 获得当前时间
        let nowDate = NSDate()
        
        // 计算时间差
        let interval = Int(nowDate.timeIntervalSinceDate(createDate))
        
        // 处理小于一分钟的时间
        if interval < 60 {
            return "刚刚"
        }
        
        // 处理小于一小时的时间
        if interval < 60 * 60 {
            return "\(interval / 60)分钟前"
        }
        
        // 处理小于一天的时间
        if interval < 60 * 60 * 24 {
            return "\(interval / (60 * 60))小时前"
        }
        
        // 处理昨天时间
        let calendar = NSCalendar.currentCalendar()
        
        if calendar.isDateInYesterday(createDate) {
            fmt.dateFormat = "昨天 HH:mm"
            let timeStr = fmt.stringFromDate(createDate)
            return timeStr
        }
        
        // 处理一年之内的时间
        let cmp = calendar.components(.Year, fromDate: createDate, toDate: nowDate, options: [])
        if cmp.year < 1 {
            fmt.dateFormat = "MM-dd HH:mm"
            let timeStr = fmt.stringFromDate(createDate)
            return timeStr
        }
        
        // 处理超过一年的时间
        fmt.dateFormat = "yyyy-MM-dd HH:mm"
        let timeStr = fmt.stringFromDate(createDate)
        return timeStr
    }
}

















