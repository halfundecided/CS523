//
//  SecondViewController.swift
//  MultiViews
//
//  Created by Mijeong Ban on 2/6/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    // This variable will hold the data being passed from the First View Controller
    var receivedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Used the text from the First View Controller to set the label
        myLabel.text = receivedString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

