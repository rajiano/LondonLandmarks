//
//  TableViewCell.swift
//  LondonLandmarks
//
//  Created by Oludemilade Raji on 4/16/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var cellTitle: UILabel!
    @IBOutlet var cellDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
