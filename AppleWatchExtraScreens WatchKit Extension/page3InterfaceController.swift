//
//  page3InterfaceController.swift
//  AppleWatchExtraScreens
//
//  Created by Jernej Mihalic on 6. 07. 15.
//  Copyright © 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class page3InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        print("page 3 started")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("page 3 activated")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        print("page 3 deactivated")
        super.didDeactivate()
    }

}
