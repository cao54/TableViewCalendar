//
//  event.swift
//  TableViewCalendar
//
//  Created by Yanting Cao on 15/10/15.
//  Copyright © 2015年 Yanting Cao. All rights reserved.
//

import UIKit

class event: NSObject {

    var text: String
    
    // A Boolean value that determines the completed state of this item.
    var completed: Bool
    
    // Returns a ToDoItem initialized with the given text and default completed value.
    init(text: String) {
        self.text = text
        self.completed = false
    }
}
