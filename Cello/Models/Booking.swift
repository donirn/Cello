//
//  Booking.swift
//  Cello
//
//  Created by Doni Ramadhan on 19/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import Foundation

protocol Booking {
    var purpose: String {get}
    var date: NSDate {get}
    var description: String {get}
}

struct BookingAccepted: Booking{
    let purpose: String
    let date: NSDate
    let description: String
}

struct BookingRequested: Booking{
    let purpose: String
    let date: NSDate
    let description: String
}
