//
//  ViewController.swift
//  firstapp
//
//  Created by Mijeong Ban on 1/30/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBAction func myButton(_ sender: Any) {
        
        print("Hi")
        
        myLabel.text = myTextField.text
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

