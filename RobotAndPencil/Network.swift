//
//  Network.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

// Simulation of a network

struct Mock {
    
    // when switching remote services, one would only have to change this base url to match the new restful service.
    static let baseURL = "https://someRemoteService.com"
}

// MARK: - Network
/*  NOTE: This is intended to be a proof of concept, by generalizing the request function, any remote service would be able to be reached with a simple change of the base url, given the routes stay the same. If the routes were to change one would only have to chage that in the target and no further changes to other classes would be needed.
 */
struct Network {
    
    /// Request is a class method of network used to make request.
    ///
    /// - Parameters:
    ///   - target: target is an enum that conforms to the targetType protocol
    ///   - completion: returns a result type of JSON or Error
    static func request(target: TargetType, completion: @escaping (Result<Decodable.JSON>) -> Void) {
        
        // building your endpoint is now generalized without using generics
        let url = Mock.baseURL + target.route
        
        // Build request
        
        // Make request
        URLSession.shared.dataTask(with: URL(string: url)!) {data,_,_ in
            do {
                guard let data = data else {
                    completion(.Failure(NSError()))
                    return
                }
                let json = try JSONSerialization.jsonObject(with: data, options: []) as! Decodable.JSON
                completion(.success(json))
            } catch {
                completion(.Failure(error))
            }
            
        }
    }
}
