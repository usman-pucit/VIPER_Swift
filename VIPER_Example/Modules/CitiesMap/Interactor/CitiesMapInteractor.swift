//
//  CitiesMapInteractor.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation

class CitiesMapInteractor {
    // MARK: Properties
    
    weak var output: CitiesMapUseCaseOutput?
    let services = CitiesMapServices()
}

extension CitiesMapInteractor: CitiesMapUseCase {
    //////////////////////--------------------------------------------------------------------///////////////////////////////
    
    ////////FOR Pakistan Cities
    
    func getCitiesPositionArray() -> [CitiesPositionModel] {
        var cities = [CitiesPositionModel]()
        cities.append(CitiesPositionModel(name: "", latitude: 24.8607, longitude: 67.0011))
        cities.append(CitiesPositionModel(name: "", latitude: 31.549722, longitude: 74.343611))
        cities.append(CitiesPositionModel(name: "", latitude: 31.416667, longitude: 73.083333))
        cities.append(CitiesPositionModel(name: "", latitude: 34.73933, longitude: 72.335655))
        cities.append(CitiesPositionModel(name: "", latitude: 33.597331, longitude: 73.047904))
        cities.append(CitiesPositionModel(name: "", latitude: 30.196789, longitude: 71.478241))
        cities.append(CitiesPositionModel(name: "", latitude: 32.155667, longitude: 74.187052))
        cities.append(CitiesPositionModel(name: "", latitude: 25.396891, longitude: 68.377183))
        cities.append(CitiesPositionModel(name: "", latitude: 34.008, longitude: 71.578488))
        cities.append(CitiesPositionModel(name: "", latitude: 34.1463, longitude: 73.211684))
        cities.append(CitiesPositionModel(name: "", latitude: 33.69, longitude: 73.0551))
        cities.append(CitiesPositionModel(name: "", latitude: 30.184138, longitude: 67.00141))
        cities.append(CitiesPositionModel(name: "", latitude: 32.985414, longitude: 70.602701))
        cities.append(CitiesPositionModel(name: "", latitude: 29.4, longitude: 71.683333))
        
        return cities
    }
    
    //////////////////////--------------------------------------------------------------------///////////////////////////////
    
    ////////FOR US Cities
    
//    func getCitiesPositionArray() -> [CitiesPositionModel] {
//        var cities = [CitiesPositionModel]()
//        cities.append(CitiesPositionModel(name: "", latitude: 47.1443, longitude: -122.1408))
//        cities.append(CitiesPositionModel(name: "", latitude: 48.5602, longitude: -122.4311))
//        cities.append(CitiesPositionModel(name: "", latitude: 46.6085, longitude: -121.6702))
//        cities.append(CitiesPositionModel(name: "", latitude: 47.5862, longitude: 47.5862))
//        cities.append(CitiesPositionModel(name: "", latitude: 47.5207, longitude: -122.5196))
//        cities.append(CitiesPositionModel(name: "", latitude: 47.8432, longitude: -120.8157))
//        cities.append(CitiesPositionModel(name: "", latitude: 46.6437, longitude: -118.5565))
//        cities.append(CitiesPositionModel(name: "", latitude: 47.6813, longitude: -118.0164))
//        cities.append(CitiesPositionModel(name: "", latitude: 46.754, longitude: -118.3106))
//        cities.append(CitiesPositionModel(name: "", latitude: 34.1463, longitude: 73.211684))
//
//        return cities
//    }
    
    func fetchForcastDetail(latitude: Double, longitude: Double) {
        services.executeForcastDetail(latitude: latitude, longitude: longitude) { response in
            if let response = response.result.value {
                self.output?.onResponse(response: response)
            } else {
                self.output?.onFailure(error: response.error ?? NSError(domain: "", code: 2000, userInfo: ["Error": "Something went wrong"]))
            }
        }
    }
}
