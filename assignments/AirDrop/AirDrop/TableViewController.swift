//
//  TableViewController.swift
//  AirDrop
//
//  Created by Mijeong Ban on 3/21/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    var names = [String]()
    
    override func viewDidLoad() {
        
        names = ["IMAGE", "PDF", "TEXT"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
