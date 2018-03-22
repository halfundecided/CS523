//
//  ViewController.swift
//  Assignment1_Maps
//
//  Created by Mijeong Ban on 3/4/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//
//  I pledge my honor that I have abided by the Stevens Honor System. -Mijeong Ban

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!

    
    
    struct Location {
        let title: String
        let subtitle: String
        let latitude: Double
        let longitude: Double
        let image: String
    }
    
    enum maptype:NSInteger {
        case standardmap = 0
        case satellitemap = 1
        case hybridmap = 2
    }
    
    let locations = [
        Location(title: "Real home", subtitle: "South Korea", latitude: 37.394220, longitude: 126.640785, image: "home"),
        Location(title: "Home", subtitle: "Palisades park", latitude: 40.845345, longitude: -73.996368, image: "home"),
        Location(title: "Stevens Institute of Technology", subtitle: "my school", latitude: 40.744851, longitude: -74.02570724487305, image: "school"),
        Location(title: "Pier A Park", subtitle: "good place to chill out", latitude: 40.736999, longitude: -74.026689, image: "park"),
        Location(title: "Pilsener Hause & Biergarten", subtitle: "favorite pub", latitude: 40.755536, longitude: -74.031415, image: "beer"),
        Location(title: "Bus Stop", subtitle: "go home", latitude: 40.747670, longitude: -74.027709, image: "bus"),
        Location(title: "Bagels on the Hudson", subtitle: "plain bagel with cream cheese", latitude: 40.746316, longitude: -74.028544, image: "bagel"),
        Location(title: "Midtown Philly Steaks", subtitle: "yummy", latitude: 40.742967, longitude: -74.028966, image: "bagel"),
        Location(title: "Samuel C Williams Library", subtitle: "bad place to study", latitude: 40.744836, longitude: -74.025337, image: "school"),
        Location(title: "Babbio Center", subtitle: "favorite place to study", latitude: 40.742815, longitude: -74.026763, image: "school")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self
        self.mapView.mapType = MKMapType.standard
        self.mapView.isZoomEnabled = true
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location.title
            annotation.subtitle = location.subtitle
            annotation.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 1000, 1000)
            mapView.setRegion(region, animated: true)
            mapView.addAnnotation(annotation)
        }
    }
    
/*
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        for location in locations {
            let pinView = MKAnnotationView(annotation: annotation, reuseIdentifier: "")
            pinView.canShowCallout = true
            pinView.image = UIImage(named: location.image)!
        }
        return pinView
    }
    
 */
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        for location in locations {
            let pinView1 = MKAnnotationView(annotation: annotation, reuseIdentifier: "hello")
            pinView1.image = UIImage(named: "\(location.image)")
            pinView1.canShowCallout = true
            return pinView1
        }
    }
    //I need to know how to access each annotation or how to use for loop for this function
    
    @IBAction func mapTypes(_ sender: Any) {
        switch(sender as AnyObject).selectedSegmentIndex {
        case maptype.standardmap.rawValue:
            mapView.mapType = .standard
        case maptype.satellitemap.rawValue:
            mapView.mapType = .satellite
        case maptype.hybridmap.rawValue:
            mapView.mapType = .hybrid
        default:
            break
        }
    }
    
    //have to figure out how to make Zoomin and Zoomout button 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

