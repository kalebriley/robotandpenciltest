//
//  BusinessLayer.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

struct BussinessLayer {
    static func delete(comment: Comment, completion: @escaping (Bool) -> Void)  {
        Network.request(target: CommentTarget.delete(comment: comment)) {
            if case .success(_) = $0 {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    static func delete(annotation: Annotation, completion: @escaping (Bool) -> Void) {
        Network.request(target: AnnotationTarget.delete(annotation: annotation)) {
            if case .success(_) = $0 {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
