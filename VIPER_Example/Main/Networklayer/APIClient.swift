//
//  APIClient.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
import Alamofire

class APIClient{
    
    // MARK: - GET MEHTOD
    /// This is the generic webservice method of type 'GET' for web service calling
    ///
    /// - Parameters:
    ///   - action: service end point
    ///   - completionHandler: generic call back completion handler
    class func performGet<T: Decodable>(route: APIRouter, completionHandler: @escaping (DataResponse<T>) -> ()) {
        Alamofire.request(route).responseObject { (response) in
            completionHandler(response)
        }
    }
    
    
}
