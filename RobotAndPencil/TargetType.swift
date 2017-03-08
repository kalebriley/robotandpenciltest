//
//  TargetType.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

protocol TargetType {
    var route: String {get} // Route used to accesss the data you wish to retrieve
    var method: HTTPMethod {get} // The http method that would be used to access this route
    var parameters: [String: Any] {get} // Any body parameters associated with this route
}

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
    case delete = "DELETE"
    case update = "UPDATE"
}
