//
//  ViewController.swift
//  TableView
//
//  Created by Mijeong Ban on 2/27/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let superHeroes=["Batman", "Superman", "Flash"]
    let Age=[42, 32, 24]
    
    
    @IBOutlet weak var MyTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTable.delegate=self
        MyTable.dataSource=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=MyTable.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text=superHeroes[indexPath.row]
        cell?.detailTextLabel?.text="\(Age[indexPath.row])"
        
        return cell!
    }
    

}

