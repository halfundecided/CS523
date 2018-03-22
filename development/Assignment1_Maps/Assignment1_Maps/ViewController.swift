//
//  ViewController.swift
//  Assignment1_Maps
//
//  Created by Mijeong Ban on 3/4/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
 /*   var pins = [AnnotationPin]()

    var pin1:AnnotationPin!
    var pin2:AnnotationPin!
    var pin3:AnnotationPin!
    var pin4:AnnotationPin!
    var pin5:AnnotationPin!
    var pin6:AnnotationPin!
    var pin7:AnnotationPin!
    var pin8:AnnotationPin!
    var pin9:AnnotationPin!
    var pin10:AnnotationPin! */

    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        mapView.delegate = self

        var pins = [AnnotationPin]()
        var coordinates = [CLLocationCoordinate2D]()
        var regions = [MKCoordinateRegion]()
        let titles = ["Stevens Institute of Technology", "Pier A Park", "Pilsener Hause & Biergarten", "Bus Stop", "Bagels on the Hudson", "Midtown Philly Steaks", "Samuel C Williams Library", "Babbio Center", "Home", "real Home"]
        let subtitles = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
        let latitutes = [40.744851, 40.736999, 40.755536, 40.747670, 40.746316, 40.742967, 40.744836, 40.742815, 40.845345, 37.394220]
        let longitudes = [-74.02570724487305, -74.026689, -74.031415, -74.027709, -74.028544, -74.028966, -74.025337, -74.026763, -73.996368, 126.640785]
        
        for i in 0...titles.count {
            coordinates[i] = CLLocationCoordinate2DMake(latitutes[i], longitudes[i])
        }
        
        for i in 0...9 {
            regions[i] = MKCoordinateRegionMakeWithDistance(coordinates[i], 1000, 1000)
        }
        
        for i in 0...9 {
            mapView.setRegion(regions[i], animated: true)
        }
        
        for i in 0...9 {
            pins[i] = AnnotationPin(title: titles[i], subtitle: subtitles[i], coordinate: coordinates[i])
            mapView.addAnnotation(pins[i])
        }
        
    }
    
   /* func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: pin, reuseIdentifier: "mijeong")
            annotationView.image = UIImage(named: "school")
            return annotationView
    }*/

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

