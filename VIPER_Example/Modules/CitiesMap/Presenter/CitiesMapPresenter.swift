//
//  CitiesMapPresenter.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
import MapKit

class CitiesMapPresenter {
    // MARK: - Properties
    
    weak var view: CitiesMapView?
    var router: CitiesMapWireframe?
    var interactor: CitiesMapUseCase?
}

extension CitiesMapPresenter: CitiesMapPresentation {
    // MARK: - Function
    
    func getCityForecast(latitude: Double, longitude: Double) {
        view?.showLoader()
        interactor?.fetchForcastDetail(latitude: latitude, longitude: longitude)
    }
    
    // MARK: - Function
    
    func getMapviewAnnotations() -> [CustomAnnoation] {
        var annotations = [CustomAnnoation]()
        
        for city in interactor?.getCitiesPositionArray() ?? [] {
            let annotation = CustomAnnoation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: city.latitude, longitude: city.longtiude)
            annotations.append(annotation)
        }
        return annotations
    }
}

extension CitiesMapPresenter: CitiesMapUseCaseOutput {
    // MARK: - Function
    
    func onResponse(response: ForecastResponseModel) {
        view?.onResponse(response: response)
        view?.hideLoader()
    }
    
    // MARK: - Function
    
    func onFailure(error: Error) {
        view?.hideLoader()
        view?.onFailure(error: error)
    }
}
