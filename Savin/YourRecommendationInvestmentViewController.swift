//
//  YourRecommendationInvestmentViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 28/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class YourRecommendationInvestmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var yourRecommendationInvestment = ["Reksadana", "Saham", "Forex"]

    @IBOutlet weak var yourRecommendationTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        yourRecommendationTable.delegate = self
        yourRecommendationTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yourRecommendationInvestment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yourRecommendationInvestmentCell = tableView.dequeueReusableCell(withIdentifier: "YourRecommendationInvestmentReuseIdentifier", for:indexPath) as! YourRecommendationInvestmentTableViewCell
        
        yourRecommendationInvestmentCell.investmentName.text = yourRecommendationInvestment[indexPath.row]
        
        return yourRecommendationInvestmentCell
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
