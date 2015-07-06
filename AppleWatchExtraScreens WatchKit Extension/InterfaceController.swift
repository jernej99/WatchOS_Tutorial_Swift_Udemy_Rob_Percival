//
//  InterfaceController.swift
//  AppleWatchExtraScreens WatchKit Extension
//
//  Created by Jernej Mihalic on 6. 07. 15.
//  Copyright © 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        print("app launched")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        print("page 1 launched")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
        print("page one hidden")
    }

}
