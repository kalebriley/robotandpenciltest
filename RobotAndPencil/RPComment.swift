//
//  RPComment.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import Foundation

// MARK: - Comment
// NOTE: Basic structure of comment
struct Comment {
    let id: String
    let commenterName: String
    let text: String
    let createdAt: String
    let updatedAt: String
}

// MARK: - Decodable Conformity
extension Comment: Decodable{
    static func decode(json: Decodable.JSON) -> Comment {
        let id = json["id"] as! String
        let commentName = json["id"] as! String
        let text = json["text"] as! String
        let createdAt = json["createdAt"] as! String
        let updatedAt = json["updatedAt"] as! String
        
        return Comment(id: id, commenterName: commentName, text: text, createdAt: createdAt, updatedAt: updatedAt)
    }
}

// MARK: - TaegetTYpe Conformity
enum CommentTarget: TargetType {
    case post(text: String)
    case delete(comment: Comment)
    case all
    
    var route: String {
        switch self {
        case .post:
            return "/comments/post"
        case .delete(let comment):
            return "comments/\(comment.id)/delete"
        case .all:
            return "comments/all"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .post:
            return .post
        case .delete:
            return .delete
        case .all:
            return .get
        }
    }
    
    var parameters: [String : Any] {
        switch self {
        case .post(let text):
            return ["body": text]
        case .delete:
            return ["":""]
        case .all:
            return ["":""]
        }
    }
    
}
