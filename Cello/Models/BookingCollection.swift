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
    
    var accepted : [BookingAccepted] = []
    var requested: [BookingRequested] = []
    
    private override init() {
        super.init()
    }
    
    func getNumberOfRequests() -> Int {
        return requested.count
    }
    
    func getNumberOfAccepted() -> Int{
        return accepted.count
    }
}
