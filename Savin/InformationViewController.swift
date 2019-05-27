//
//  InformationViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 24/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var setBudget: UITableView!

    var pickerData = ["Surabaya", "Solo", "Jakarta", "Manado", "Bandung", "Kolong Jembatan Kukuh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setBudget.dataSource = self
        setBudget.delegate = self
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let setBudgetCell = tableView.dequeueReusableCell(withIdentifier: "setBudgetReuseIdentifier", for:indexPath) as! InformationTableViewCell
        
        return setBudgetCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
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
