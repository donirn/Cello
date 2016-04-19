//
//  Booking.swift
//  Cello
//
//  Created by Doni Ramadhan on 19/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import Foundation

struct Booking {
    let purpose: String
    let date: NSDate
    let description: String
    var status: BookingStatusType
    
    enum BookingStatusType {
        case Requested, Accepted, Expired
    }
}
