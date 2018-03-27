//
//  ShowFile.swift
//  AirDrop
//
//  Created by Mijeong Ban on 3/21/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
//  I pledge my honor that I have abided by the Stevens Honor System


import UIKit

class ShowFile: UIViewController {
    
    @IBOutlet weak var share: UIButton!
    var fileName : String = ""
    var localFilePath : URL! = nil
    @IBOutlet weak var wev: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        share.layer.cornerRadius = 5.0
        share.layer.masksToBounds = true
        
        let arrComponent = fileName.components(separatedBy: ".")
        let filePath = Bundle.main.path(forResource: arrComponent[0], ofType:arrComponent[1])
        
        localFilePath = URL(fileURLWithPath: filePath!)
        let request = URLRequest(url: localFilePath)
        wev.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let objShare = [localFilePath]
        let objActivityController = UIActivityViewController(activityItems: objShare, applicationActivities: nil)
        let excludedActivities = [UIActivityType.postToTwitter, UIActivityType.postToFacebook, UIActivityType.postToWeibo, UIActivityType.message, UIActivityType.mail, UIActivityType.print, UIActivityType.copyToPasteboard, UIActivityType.assignToContact, UIActivityType.saveToCameraRoll, UIActivityType.addToReadingList, UIActivityType.postToFlickr, UIActivityType.postToVimeo, UIActivityType.postToTencentWeibo]
        objActivityController.excludedActivityTypes = excludedActivities
        self.present(objActivityController, animated: true)
    }
    
}

