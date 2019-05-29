//
//  HighRiskInvestmentViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 28/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class HighRiskInvestmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var highRiskInvestment = ["Reksadana", "Saham", "Forex"]
    
    @IBOutlet weak var highRiskTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highRiskTable.delegate = self
        highRiskTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return highRiskInvestment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let highRiskInvestmentCell = tableView.dequeueReusableCell(withIdentifier: "HighRiskInvestmentReuseIdentifier", for:indexPath) as! HighRiskInvestmentTableViewCell
        highRiskInvestmentCell.investmentName.text = highRiskInvestment[indexPath.row]
        
        return highRiskInvestmentCell
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
