//
//  ViewController.swift
//  MySocketClient
//
//  Created by Mijeong Ban on 3/6/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ipTextField: UITextField!
    @IBOutlet weak var portTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var labelTextField: UITextField!
    
    @IBAction func myConnect(_ sender: Any) {
        var IPaddress=ipTextField.text
        let server = TCPServer(address: IPaddress!, port: 9091)
        switch server.listen() {
        case .success:
            while true {
                if var client = server.accept() {
                    echoService(client: client)
                } else {
                    print("accept error")
                }
            }
        case .failure(let error):
            print(error)
        }
    }
    
    @IBAction func myDisconnect(_ sender: Any) {
    }
    
    @IBAction func mySend(_ sender: Any) {
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

