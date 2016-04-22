//
//  Booking.swift
//  Cello
//
//  Created by Doni Ramadhan on 20/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//
import Foundation

class Booking: NSObject {
    let purpose: String
    let requestDate: NSDate
    let descriptionText: String
    
    init(purpose: String, requestDate: NSDate, descriptionText: String) {
        self.purpose = purpose
        self.requestDate = requestDate
        self.descriptionText = descriptionText
        super.init()
    }
    
    func getRequestDateString() -> String{
        let daysUntil = requestDate.daysUntil()
        if daysUntil > 0{
            return requestDate.formattedDateWithFormat("EEE, dd MMM yyyy, HH:mm")
        } else {
            let totalMinutes = Int(requestDate.minutesUntil())
            if totalMinutes > 0 {
                let hours = Int(requestDate.hoursUntil())
                let minutes = totalMinutes % 60
                var stringResult = ""
                
                if hours > 0{
                    stringResult += "\(hours) hour"
                    if hours > 1{
                        stringResult += "s"
                    }
                }
                
                if hours > 0 && minutes > 0 {
                    stringResult += " and "
                }
                
                if minutes > 0{
                    stringResult += "\(minutes) minute"
                    if minutes > 1{
                        stringResult += "s"
                    }
                }
                stringResult += " more"
                return stringResult
            } else {
                return "now"
            }
        }
    }
}
