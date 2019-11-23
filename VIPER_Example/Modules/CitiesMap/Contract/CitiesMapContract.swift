//
//  CitiesMapContract.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
import MapKit
import Presentr

protocol CitiesMapView: class {
    // TODO: Declare view methods
    func showLoader()
    func hideLoader()
    func onResponse(response: ForecastResponseModel)
    func onFailure(error: Error)
}

protocol CitiesMapPresentation: class {
    // TODO: Declare presentation methods
    func getCityForecast(latitude: Double, longitude: Double)
    func getMapviewAnnotations() -> [CustomAnnoation]
}

protocol CitiesMapUseCase: class {
    // TODO: Declare use case methods
    func getCitiesPositionArray() -> [CitiesPositionModel]
    func fetchForcastDetail(latitude: Double, longitude: Double)
}

protocol CitiesMapUseCaseOutput: class {
    // TODO: Declare interactor output methods
    func onResponse(response: ForecastResponseModel)
    func onFailure(error: Error)
}

protocol CitiesMapWireframe: class {
    // TODO: Declare wireframe methods
}
