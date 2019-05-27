//
//  InformationTableViewCell.swift
//  Savin
//
//  Created by Guildy Harvey on 24/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class InformationTableViewCell: UITableViewCell {

    
    @IBOutlet weak var deleteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    
        deleteButton.layer.cornerRadius = 15
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
