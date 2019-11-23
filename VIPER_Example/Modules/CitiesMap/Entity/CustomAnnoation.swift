
//
//  CustomAnnoation.swift
//  VIPER_Example
//
//  Created by Malik Usman on 15/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import MapKit
import UIKit

class CustomAnnoation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D = kCLLocationCoordinate2DInvalid

    override init() {
        super.init()
    }
}
