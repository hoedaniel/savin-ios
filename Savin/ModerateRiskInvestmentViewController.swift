//
//  ModerateRiskInvestmentViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 28/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class ModerateRiskInvestmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var moderateRiskInvestment = ["Reksadana", "Saham", "Forex"]
    
    @IBOutlet weak var moderateRiskTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moderateRiskTable.delegate = self
        moderateRiskTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moderateRiskInvestment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moderateRiskInvestmentCell = tableView.dequeueReusableCell(withIdentifier: "ModerateRiskInvestmentReuseIdentifier", for:indexPath) as! ModerateRiskInvestmentTableViewCell
        moderateRiskInvestmentCell.investmentName.text = moderateRiskInvestment[indexPath.row]
        
        return moderateRiskInvestmentCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
