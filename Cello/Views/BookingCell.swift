//
//  BookingCell.swift
//  Cello
//
//  Created by Doni Ramadhan on 22/04/16.
//  Copyright © 2016 Cello. All rights reserved.
//

import UIKit

class BookingCell: UITableViewCell {
    @IBOutlet weak var purposeLabel: UILabel!
    @IBOutlet weak var requestDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
