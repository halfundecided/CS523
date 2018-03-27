//
//  TableViewController.swift
//  AirDrop
//
//  Created by Mijeong Ban on 3/21/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
//  I pledge my honor that I have abided by the Stevens Honor System

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        names = ["IMAGE", "PDF", "TEXT"]
        identities = ["F", "F", "F"]
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
        let identity = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: identity) as! ShowFile
        if (indexPath.row == 0) {
            viewController.fileName = "image.png"
        } else if (indexPath.row == 1) {
            viewController.fileName = "pdf.pdf"
        } else {
            viewController.fileName = "text.txt"
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
