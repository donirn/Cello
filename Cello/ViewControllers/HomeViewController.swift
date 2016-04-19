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
        let booking = Booking(purpose: "waw", date: NSDate(), description: "yeah", status: .Requested)
        BookingCollection.sharedInstance.elements = [booking]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

