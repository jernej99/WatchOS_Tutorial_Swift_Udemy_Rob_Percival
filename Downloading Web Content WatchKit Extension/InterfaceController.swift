//
//  InterfaceController.swift
//  Downloading Web Content WatchKit Extension
//
//  Created by Jernej Mihalic on 9. 07. 15.
//  Copyright (c) 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var displayImage: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let documentPath: AnyObject = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let destinationPath = documentPath.stringByAppendingPathComponent("avrelij.jpg")
        
        var fileManager = NSFileManager.defaultManager()
        if fileManager.fileExistsAtPath(destinationPath) {
        
            let avrelij = UIImage(contentsOfFile: destinationPath)
            displayImage.setImage(avrelij)
            
        } else {
        
            let url = NSURL(string: "https://pioneerpitstop.files.wordpress.com/2014/08/marcus.jpg")
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            
            if error == nil {
                
                var aureliusImage = UIImage(data: data)
                self.displayImage.setImage(aureliusImage)
                UIImageJPEGRepresentation(aureliusImage, 1.0).writeToFile(destinationPath, atomically: true)
                
            } else {
                
                print(error)
                }
        })
        task.resume()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
