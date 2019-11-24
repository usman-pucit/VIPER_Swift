//
//  MapAnnotationView.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
import MapKit

class MapAnnotationView: MKAnnotationView {
  
    // MARK: Variables

    weak var delegate: MapAnnoationDelegate?

    // MARK: - init
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        self.canShowCallout = false
        self.image = UIImage(named: "city_icon")
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.canShowCallout = false
        self.image = UIImage(named: "city_icon")
    }

    // MARK: - Function
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.delegate?.annotationDidTapped(coordinates: annotation?.coordinate)
    }
}

// Protocol: To confirm reusable identifiers
extension MapAnnotationView: ResuableViews {}
