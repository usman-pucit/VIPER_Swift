//
//  APIRouter.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Alamofire
import Foundation

enum APIRouter: URLRequestConvertible {
    case forecast(latitudes: Double, longitude: Double)
    
    // MARK: - HTTPMethod
    
    private var method: HTTPMethod {
        switch self {
        case .forecast:
            return .get
        }
    }
    
    // MARK: - Path
    
    private var path: String {
        switch self {
        case .forecast(let latitude, let longitude):
            return "forecast/" + Environment.Production.secretKey + "\(latitude),\(longitude)"
        }
    }
    
    // MARK: - Parameters
    
    private var parameters: Parameters? {
        switch self {
        case .forecast:
            return nil
        }
    }
    
    // MARK: - URLRequestConvertible
    
    func asURLRequest() throws -> URLRequest {
        let url = try Environment.Production.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.allHTTPHeaderFields = Environment.Production.headers
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
