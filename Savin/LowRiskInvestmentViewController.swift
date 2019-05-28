//
//  LowRiskInvestmentViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 28/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class LowRiskInvestmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lowRiskInvestment = ["Reksadana", "Saham", "Forex"]
    
    @IBOutlet weak var lowRiskTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lowRiskTable.delegate = self
        lowRiskTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lowRiskInvestment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lowRiskInvestmentCell = tableView.dequeueReusableCell(withIdentifier: "LowRiskInvestmentReuseIdentifier", for:indexPath) as! LowRiskInvestmentTableViewCell
        lowRiskInvestmentCell.invesmentName.text = lowRiskInvestment[indexPath.row]
        
        return lowRiskInvestmentCell
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
