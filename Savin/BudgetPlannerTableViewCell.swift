//
//  BudgetPlannerTableViewCell.swift
//  Savin
//
//  Created by Guildy Harvey on 23/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class BudgetPlannerTableViewCell: UITableViewCell {

    @IBOutlet weak var labelKategori: UILabel!
    @IBOutlet weak var labelTotal: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var labelBudget: UILabel!
    @IBOutlet weak var labelPersen: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}

