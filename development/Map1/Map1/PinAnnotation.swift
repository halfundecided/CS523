//
//  PinAnnotation.swift
//  Map1
//
//  Created by Mijeong Ban on 2/27/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import MapKit

class PinAnnotationL: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title=title
        self.subtitle=subtitle
        self.coordinate=coordinate
    }
}
