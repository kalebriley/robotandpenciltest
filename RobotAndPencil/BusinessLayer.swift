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
        // Here we can use either the network or any future remote service. 
        //The implementaion of the request is left up to the service(Database framework or remote serivce) we are using.
        Network.request(target: CommentTarget.delete(comment: comment)) {
            if case .success(_) = $0 {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    static func delete(annotation: Annotation, completion: @escaping (Bool) -> Void) {
        Database.request(target: AnnotationTarget.delete(annotation: annotation)) {
            if case .success(_) = $0 {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}

struct BussinessLayer2 {
}

