//
//  ViewController.swift
//  Assignment1_TableView
//
//  Created by Mijeong Ban on 2/27/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
// I pledge my honor that I have abided by the Stevens Honor System.

import UIKit

struct Superheros: Decodable{
    let heroName: String
    let name: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var superheroArray = [Superheros]()
    
    let jsonDataURL = "http://patrickhill.nyc/justiceleague.json"
    
    @IBOutlet weak var MyTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getJsonFromURL()
        MyTable.delegate=self
        MyTable.dataSource=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=MyTable.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text="\(superheroArray[indexPath.row].heroName)"
        cell?.detailTextLabel?.text="\(superheroArray[indexPath.row].name)"
        
        return cell!
    }
    
    func getJsonFromURL(){
        let url = URL(string: jsonDataURL)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
                self.superheroArray =  try JSONDecoder().decode([Superheros].self, from: data!)
            }catch let jsonErr{
                print ("an error happened", jsonErr)
            }
            OperationQueue.main.addOperation({
                self.MyTable.reloadData()
            })
        }.resume()
    }
}

