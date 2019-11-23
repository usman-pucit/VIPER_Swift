//
//  Environment.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation

enum Environment {
    case Production
    
    var baseURL: String {
        switch self {
        case .Production:
            return "https://api.darksky.net/"
        }
    }
    
    var headers: [String: String] {
        switch self {
        case .Production:
            return ["Content-Type": "application/json"]
        }
    }
    
    var secretKey: String {
        switch self {
        case .Production:
            return "2d8c8c6571988b81965b115d54b3ff72/"
        }
    }
}
