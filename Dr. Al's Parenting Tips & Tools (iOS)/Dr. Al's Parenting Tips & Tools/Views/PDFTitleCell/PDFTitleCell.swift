//
//  PDFTitleCell.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 2/17/21.
//  Copyright © 2021 adam Winebarger. All rights reserved.
//

import UIKit

class PDFTitleCell: UITableViewCell {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
