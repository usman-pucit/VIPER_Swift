//
//  ForecastHourlyModel.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
struct ForecastHourlyModel: Codable {
    let summary: String?
    let icon: String?
    let data: [ForecastDataModel]?

    enum CodingKeys: String, CodingKey {
        case summary
        case icon
        case data
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        summary = try values.decodeIfPresent(String.self, forKey: .summary)
        icon = try values.decodeIfPresent(String.self, forKey: .icon)
        data = try values.decodeIfPresent([ForecastDataModel].self, forKey: .data)
    }
}
