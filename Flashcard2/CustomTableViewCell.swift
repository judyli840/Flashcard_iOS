//
//  CustomTableViewCell.swift
//  Flashcard2
//
//  Created by Judy Li on 11/29/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
