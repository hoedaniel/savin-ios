//
//  BudgetPlannerViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 23/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class BudgetPlannerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var budgetTable: UITableView!
    var kategori = ["Food/Beverage", "Fashion", "Fuel"]
    var harga = ["Rp. 630.000", "Rp. 1.630.000", "Rp. 20.000"]
    var budget = ["Rp. 1.000.000", "Rp. 2.000.000", "Rp. 500.000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        budgetTable.delegate = self
        budgetTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategori.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let budgetCell = tableView.dequeueReusableCell(withIdentifier: "BudgetReuseIdentifier", for:indexPath) as! BudgetPlannerTableViewCell
        
        budgetCell.labelKategori.text = kategori[indexPath.row]
        budgetCell.labelTotal.text = harga[indexPath.row]
        budgetCell.labelBudget.text = budget[indexPath.row]
        
        return budgetCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
