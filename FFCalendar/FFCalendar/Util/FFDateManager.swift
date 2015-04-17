//
//  FFDateManager.swift
//  FFCalendar
//
//  Created by Hive on 4/13/15.
//  Copyright (c) 2015 Fernanda G Geraissate. All rights reserved.
//

import UIKit

class FFDateManager: NSObject {
    
    // MARK: - Properties
    
    var dateCalendar: NSDate! {

        didSet {
            
            NSNotificationCenter.defaultCenter().postNotificationName(k_DATE_MANAGER_DATE_CHANGED, object: dateCalendar)
        }
    }
    
    // MARK: - Lifecycle
    
    override init() {
        
        super.init()
        
        dateCalendar = NSDate()
    }
    
    // MARK: - Singleton
    
    class var sharedManager: FFDateManager {
        
        struct Static {
            static let instance = FFDateManager()
        }
        
        return Static.instance
    }
}
