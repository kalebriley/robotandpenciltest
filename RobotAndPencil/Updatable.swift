//
//  StorageType.swift
//  RobotAndPencil
//
//  Created by kaleb riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

protocol StorageType {
    static func request(target: TargetType, completion: @escaping (Result<Decodable.JSON>) -> Void)
}
