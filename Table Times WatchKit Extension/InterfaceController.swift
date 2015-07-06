//
//  InterfaceController.swift
//  Table Times WatchKit Extension
//
//  Created by Jernej Mihalic on 6. 07. 15.
//  Copyright © 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var slider: WKInterfaceSlider!
    
    @IBAction func sliderMoved(value: Float) {
        
        tableLabel.setNumberOfRows(10, withRowType: "tableLabelRowController")
        
        for var i = 1; i <= 10; i++ {
        
            let row = tableLabel.rowControllerAtIndex(i-1) as! tableLabelRowController
        
        row.label.setText("\(i*Int(value*10))")
        }
        
    }
    
    
    @IBOutlet var tableLabel: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        
        
        
        // Configure interface objects here.
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
