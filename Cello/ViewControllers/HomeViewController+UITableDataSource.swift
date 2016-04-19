//
//  HomeViewController+UITableDataSource.swift
//  Cello
//
//  Created by Doni Ramadhan on 19/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDataSource{
    private var Accepted_Section: Int{
        get{
            return 0
        }
    }
    
    func numberOfSectionsInTableView(tableview: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == Accepted_Section{
            return "Booked Translator"
        } else {
            return "Pending Request"
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == Accepted_Section{
            return BookingCollection.sharedInstance.getNumberOfAccepted()
        } else {
            return BookingCollection.sharedInstance.getNumberOfRequests()
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = indexPath.row
        if indexPath.section == Accepted_Section{
            cell.textLabel?.text = BookingCollection.sharedInstance.accepted[row].purpose
        } else{
            cell.textLabel?.text = BookingCollection.sharedInstance.requested[row].purpose
        }
        
        return cell
    }
}