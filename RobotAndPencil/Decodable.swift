//
//  Decodable.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

protocol Decodable {
    typealias JSON = [String: Any?]
    
    static func decode(json: JSON) throws  -> Self // Decode method intended for translation of an object.
}
