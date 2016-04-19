//
//  BookingCollection.swift
//  Cello
//
//  Created by Doni Ramadhan on 19/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import Foundation

class BookingCollection: NSObject {
    static let sharedInstance = BookingCollection()
    
    var elements:[Booking] = []
    
    private override init() {
        super.init()
    }
}
