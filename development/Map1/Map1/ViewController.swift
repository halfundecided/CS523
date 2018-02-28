//
//  ViewController.swift
//  Map1
//
//  Created by Mijeong Ban on 2/27/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var myMap: MKMapView!
    
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2DMake( 40.744851, -74.02570724487305)
        
        let pin = PinnAnnotation(title:"Stevens",subtitle:"Institute of Technology", coordinate: location)
        
        myMap.setRegion(MKCoordinateRegionMakeWithDistance(location, 1500, 1500), animated: true)
        
        myMap.addAnnotation(pin)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

