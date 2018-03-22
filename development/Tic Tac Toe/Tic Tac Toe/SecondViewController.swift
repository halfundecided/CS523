//
//  SecondViewController.swift
//  Tic Tac Toe
//
//  Created by Mijeong Ban on 3/20/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var player1:String = ""
    var player2:String = ""
    var winner:String = ""
    
    var activePlayer = 1
    var State = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let win = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    var gameActive = true
    
    
    @IBAction func click(_ sender: AnyObject) {
        if (State[sender.tag-1] == 0 && gameActive == true) {
            State[sender.tag-1] = activePlayer
            
            if (activePlayer == 1) {
                sender.setTitle("X", for: .normal)
                activePlayer = 2
            } else {
                sender.setTitle("O", for: .normal)
                activePlayer = 1
            }
        }
        for combination in win
        {
            if State[combination[0]] != 0 && State[combination[0]] == State[combination[1]] && State[combination[1]] == State[combination[2]]
            {
                gameActive = false
                
                if State[combination[0]] == 1 {
                    winner = "\(player1) is WiNNER!"
                } else {
                    winner = "\(player2) is WINNER!"
                }
                
            }
        }
        
        gameActive = false
        
        for i in State
        {
            if i == 0
            {
                gameActive = true
                break
            }
        }
        if gameActive == false {
            winner = "DRAW"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ViewController = segue.destination as! ViewController
        
        ViewController.receivedString = winner
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


