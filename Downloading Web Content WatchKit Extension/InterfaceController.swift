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
    
    @IBOutlet var label: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let url = NSURL(string: "http://www.applewatchdevelopercourse.com/message.html")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            
            if error == nil {
                
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
            
                self.label.setText(urlContent! as String)
                
            } else {
                
                print(error)
            }
            
        })
        task.resume()
        
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
