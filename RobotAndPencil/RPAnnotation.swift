//
//  RPAnnotation.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

// MARK: - TaegetTYpe Conformity
enum AnnotationTarget: TargetType {
    case delete(annotation: Annotation)
    
    var route: String {
        switch self {
        case .delete(let annotation):
            return "annotations/\(annotation.id)/delete"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .delete:
            return .delete
        }
    }
    
    var parameters: [String : Any] {
        switch self {
        case .delete:
            return ["":""]
        }
    }
}

struct Annotation {
    let text: String
    let id: String
}
