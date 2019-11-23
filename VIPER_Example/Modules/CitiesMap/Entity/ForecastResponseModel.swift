//
//  ForecastResponseModel.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation

struct ForecastResponseModel: Codable {
    let latitude: Double?
    let longitude: Double?
    let timezone: String?
    let currently: ForecastCurrentlyModel?
    let hourly: ForecastHourlyModel?
    let daily: ForecastDailyModel?
    let flags: ForecastFlagsModel?
    let offset: Int?

    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
        case timezone
        case currently
        case hourly
        case daily
        case flags
        case offset
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
        longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
        timezone = try values.decodeIfPresent(String.self, forKey: .timezone)
        currently = try values.decodeIfPresent(ForecastCurrentlyModel.self, forKey: .currently)
        hourly = try values.decodeIfPresent(ForecastHourlyModel.self, forKey: .hourly)
        daily = try values.decodeIfPresent(ForecastDailyModel.self, forKey: .daily)
        flags = try values.decodeIfPresent(ForecastFlagsModel.self, forKey: .flags)
        offset = try values.decodeIfPresent(Int.self, forKey: .offset)
    }
}
