//
//  ViewController.swift
//  RobotAndPencil
//
//  Created by Kaleb Riley on 3/8/17.
//  Copyright © 2017 Kaleb Riley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let completion = { (success: Bool) in
        // do somehting on sucess
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        
    func deleteSomething() {
        // Delete an annotation
        let someAnnotation = Annotation(text: "blah", id: "1234")
        BussinessLayer.delete(annotation: someAnnotation, completion: completion)
        
        // Delete a comment
        let someComment = Comment(id: "23534", commenterName: "Elon", text: "Mars 2020", createdAt: "some time in the future", updatedAt: "some time in the past (i know)")
        BussinessLayer.delete(comment: someComment, completion: completion)
    }


}

