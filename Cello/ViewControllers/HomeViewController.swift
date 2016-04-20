//
//  HomeViewController.swift
//  Cello
//
//  Created by Doni Ramadhan on 04/02/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // dummy data
        let booking1 = BookingAccepted(purpose: "1", requestDate: NSDate(), descriptionText: "yeah")
        let booking2 = BookingAccepted(purpose: "2", requestDate: NSDate(), descriptionText: "yeah")
        let booking3 = BookingAccepted(purpose: "3", requestDate: NSDate(), descriptionText: "yeah")
        BookingCollection.sharedInstance.accepted = [booking1,booking2,booking3]
        
        
        let booking4 = BookingRequested(purpose: "4", requestDate: NSDate(), descriptionText: "yeah")
        let booking5 = BookingRequested(purpose: "5", requestDate: NSDate(), descriptionText: "yeah")
        let booking6 = BookingRequested(purpose: "6", requestDate: NSDate(), descriptionText: "yeah")
        BookingCollection.sharedInstance.requested = [booking4,booking5,booking6]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

