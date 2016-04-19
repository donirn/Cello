//
//  HomeViewController+UITableDataSource.swift
//  Cello
//
//  Created by Doni Ramadhan on 19/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDataSource{
    func numberOfSectionsInTableView(tableview: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookingCollection.sharedInstance.elements.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = indexPath.row
        cell.textLabel?.text = BookingCollection.sharedInstance.elements[row].purpose
        
        return cell
    }
}