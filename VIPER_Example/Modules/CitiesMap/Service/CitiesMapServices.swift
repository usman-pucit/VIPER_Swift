//
//  CitiesMapServices.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Alamofire
import Foundation

class CitiesMapServices {
    internal func executeForcastDetail(latitude: Double, longitude: Double, completionHandler: @escaping (DataResponse<ForecastResponseModel>) -> ()) {
        let route = APIRouter.forecast(latitudes: latitude, longitude: longitude)

        APIClient.performGet(route: route) { (handler: DataResponse<ForecastResponseModel>) in
            completionHandler(handler)
        }
    }
}
