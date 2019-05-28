//
//  RatioViewController.swift
//  Savin
//
//  Created by Guildy Harvey on 28/05/19.
//  Copyright © 2019 Guildy Harvey. All rights reserved.
//

import UIKit

class RatioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var jenisRatio = ["Likuiditas", "Debt", "ApelApel"]
    
    @IBOutlet weak var ratioTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jenisRatio.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ratioCell = tableView.dequeueReusableCell(withIdentifier: "RatioReuseIdentifier", for:indexPath) as! RatioTableViewCell
        ratioCell.ratioName.text = jenisRatio[indexPath.row]
        
        return ratioCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "showapel", sender: self)
        }
        else if indexPath.row == 1 {
            performSegue(withIdentifier: "showVidia", sender: self)
        }
        else if indexPath.row == 2 {
            performSegue(withIdentifier: "showSoyue", sender: self)
        }
        else if indexPath.row == 3 {
            performSegue(withIdentifier: "showNusaCrete", sender: self)
        }
        else if indexPath.row == 4 {
            performSegue(withIdentifier: "showMulher", sender: self)
        }
        else if indexPath.row == 5 {
            performSegue(withIdentifier: "showKayoe", sender: self)
        }
        else if indexPath.row == 6 {
            performSegue(withIdentifier: "showHeather", sender: self)
        }
        else if indexPath.row == 7 {
            performSegue(withIdentifier: "showEmozone", sender: self)
        }
        else if indexPath.row == 8 {
            performSegue(withIdentifier: "showDaunVillage", sender: self)
        }
        else if indexPath.row == 9 {
            performSegue(withIdentifier: "showDasGitter", sender: self)
        }
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
