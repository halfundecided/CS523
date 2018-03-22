//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Mijeong Ban on 3/20/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
//  I pledge my honor that I have abided by the Stevens Honor System

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstUserTextField: UITextField!
    @IBOutlet weak var SecondUserTextField: UITextField!
    @IBOutlet weak var WinnerLabel: UILabel!
    
    var receivedString = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SecondViewController = segue.destination as!
        SecondViewController
        SecondViewController.player1 = FirstUserTextField.text!
        SecondViewController.player2 = SecondUserTextField.text!
        SecondViewController.winner = WinnerLabel.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WinnerLabel.text = receivedString

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

