//
//  AnnotationPin.swift
//  Assignment1_Maps
//
//  Created by Mijeong Ban on 3/4/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import MapKit

class AnnotationPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

