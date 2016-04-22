//
//  DateFormatterUtils.swift
//  Cello
//
//  Created by Doni Ramadhan on 22/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import Foundation

class DateFormatterUtils {
    static func getHoursMinutesUntilString(date: NSDate) -> String{
        let totalMinutes = Int(date.minutesUntil())
        if totalMinutes == 0{
            return "now"
        } else {
            let hours = Int(date.hoursUntil())
            let minutes = totalMinutes % 60
            var stringResult = ""
            
            stringResult += addHoursString(hours)
            
            if hours > 0 && minutes > 0 {
                stringResult += " and "
            }
            
            stringResult += addMinutesString(minutes)
            
            stringResult += " more"
            return stringResult
        }
    }
    
    private static func addHoursString(hours: Int) -> String{
        var stringResult = ""
        if hours > 0{
            stringResult += "\(hours) hour"
            if hours > 1{
                stringResult += "s"
            }
        }
        return stringResult
    }
    
    private static func addMinutesString(minutes: Int) -> String{
        var stringResult = ""
        if minutes > 0{
            stringResult += "\(minutes) minute"
            if minutes > 1{
                stringResult += "s"
            }
        }
        return stringResult
    }
}
