//
//  ViewController.swift
//  Calculator
//
//  Created by Mijeong Ban on 1/31/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
//  I pledge my honor that I have abided by the Stevens Honor System.

import UIKit

class ViewController: UIViewController {
    
    var firstNumber = ""
    var secondNumber = ""
    var operand = ""
    var result:String = ""
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myOne(_ sender: Any) {
        if result == "" {
            myLabel.text = "1"
            result = "1"
        } else {
            result = result + "1"
            myLabel.text = result
        }
    }
    @IBAction func myTwo(_ sender: Any) {
        if result == "" {
            myLabel.text = "2"
            result = "2"
        } else {
            result = result + "2"
            myLabel.text = result
        }
    }
    @IBAction func myThree(_ sender: Any) {
        if result == "" {
            myLabel.text = "3"
            result = "3"
        } else {
            result = result + "3"
            myLabel.text = result
        }
    }
    @IBAction func myFour(_ sender: Any) {
        if result == "" {
            myLabel.text = "4"
            result = "4"
        } else {
            result = result + "4"
            myLabel.text = result
        }
    }
    @IBAction func myFive(_ sender: Any) {
        if result == "" {
            myLabel.text = "5"
            result = "4"
        } else {
            result = result + "4"
            myLabel.text = result
        }
    }
    @IBAction func mySix(_ sender: Any) {
        if result == "" {
            myLabel.text = "6"
            result = "6"
        } else {
            result = result + "6"
            myLabel.text = result
        }
    }
    @IBAction func mySeven(_ sender: Any) {
        if result == "" {
            myLabel.text = "7"
            result = "7"
        } else {
            result = result + "7"
            myLabel.text = result
        }
    }
    @IBAction func myEight(_ sender: Any) {
        if result == "" {
            myLabel.text = "8"
            result = "8"
        } else {
            result = result + "8"
            myLabel.text = result
        }
    }
    @IBAction func myNine(_ sender: Any) {
        if result == "" {
            myLabel.text = "9"
            result = "9"
        } else {
            result = result + "9"
            myLabel.text = result
        }
    }
    @IBAction func myZero(_ sender: Any) {
        if result == "" {
            myLabel.text = "0"
            result = "0"
        } else {
            result = result + "0"
            myLabel.text = result 
        }
    }
    @IBAction func myClr(_ sender: Any) {
        myLabel.text = ""
        result = ""
        firstNumber = ""
        secondNumber = ""
        operand = ""
        result = ""
    }
    @IBAction func myEqual(_ sender: Any) {
        let firstNumberInt:Double = Double(firstNumber)!
        let secondNumberInt:Double = Double(result)!
        
        var finalResult:Double = 0
        if operand == "+" {
            finalResult = firstNumberInt + secondNumberInt
        } else if operand == "-" {
            finalResult = firstNumberInt - secondNumberInt
        } else if operand == "*" {
            finalResult = firstNumberInt * secondNumberInt
        } else if operand == "/" {
            finalResult = firstNumberInt / secondNumberInt
        }

        myLabel.text = ""
        myLabel.text = String(finalResult)
        
    }
    @IBAction func myAdd(_ sender: Any) {
        firstNumber = result
        myLabel.text = result + "+"
        operand = "+"
        result = ""
    }
    @IBAction func mySubtract(_ sender: Any) {
        firstNumber = result
        myLabel.text = result + "-"
        operand = "-"
        result = ""
    }
    @IBAction func myMul(_ sender: Any) {
        firstNumber = result
        myLabel.text = result + "*"
        operand = "*"
        result = ""
    }
    @IBAction func myDiv(_ sender: Any) {
        firstNumber = result
        myLabel.text = result + "/"
        operand = "/"
        result = ""
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

