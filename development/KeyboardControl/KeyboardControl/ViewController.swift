//
//  ViewController.swift
//  KeyboardControl
//
//  Created by Mijeong Ban on 2/6/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myUsername: UITextField!
    @IBOutlet weak var myPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == myUsername {
            myPassword.becomeFirstResponder()
        } else if textField == myPassword {
            textField.resignFirstResponder()
        }
        return true
    }

}

