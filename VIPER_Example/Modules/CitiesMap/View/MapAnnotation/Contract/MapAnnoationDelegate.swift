//
//  MapAnnoationDelegate.swift
//  VIPER_Example
//
//  Created by Malik Usman on 15/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import UIKit
import MapKit

protocol MapAnnoationDelegate : class{
    func annotationDidTapped(coordinates : CLLocationCoordinate2D?)
}
