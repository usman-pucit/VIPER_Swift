//
//  CitiesPositionModel.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation

struct CitiesPositionModel {
    // MARK: - Model Variables
    
    var name: String
    var latitude: Double
    var longtiude: Double
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longtiude = longitude
    }
}
