//
//  ViewController.swift
//  JSONExample
//
//  Created by Patrick Hill on 2/20/18.
//  Copyright © 2018 Patrick Hill. All rights reserved.
//

import UIKit
struct Superheros: Decodable{
    let heroName: String
    let name: String
    
}

class ViewController: UIViewController {
    
    var superheroArray = [Superheros]()

    @IBOutlet weak var superheroLabel: UILabel!
    
    @IBOutlet weak var secretIdentityLabel: UILabel!
    
    let jsonDataURL = "http://patrickhill.nyc/justiceleague.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getJsonFromURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func getJsonFromURL(){
        //create a URL
        let url = URL(string: jsonDataURL)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            //Should check error
            //should also check response status 200 ok
            do{
                self.superheroArray =  try JSONDecoder().decode([Superheros].self, from: data!)
                print (self.superheroArray)
            }catch let jsonErr{
                print ("an error happened", jsonErr)
            }
            OperationQueue.main.addOperation({
                //calling another function after fetching the json
                //it will show the names to label
                self.showNames()
                
            })
            }.resume()
    }
    func showNames(){
        for hero in superheroArray{
            superheroLabel.text = superheroLabel.text! + hero.heroName + "\n"
            secretIdentityLabel.text = secretIdentityLabel.text! + hero.name + "\n"
        }
    }

}

