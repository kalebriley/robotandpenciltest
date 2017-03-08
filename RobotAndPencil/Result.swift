//
//  Result.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case Failure(Error)
}
