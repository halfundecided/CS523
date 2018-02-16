//
//  ViewController.swift
//  MultiViews
//
//  Created by Mijeong Ban on 2/6/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as!
        SecondViewController
        
        secondViewController.receivedString = myText.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

