//
//  ForecastFlagsModel.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
struct ForecastFlagsModel: Codable {
    let sources: [String]?
    let nearestStation: Double?
    let units: String?

    enum CodingKeys: String, CodingKey {
        case sources
        case nearestStation = "nearest-station"
        case units
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sources = try values.decodeIfPresent([String].self, forKey: .sources)
        if let value = try values.decodeIfPresent(Double.self, forKey: .nearestStation) {
            nearestStation = value
        } else {
            nearestStation = 0.0
        }
        units = try values.decodeIfPresent(String.self, forKey: .units)
    }
}
