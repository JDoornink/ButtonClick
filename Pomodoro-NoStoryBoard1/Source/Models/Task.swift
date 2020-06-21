//
//  Task.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/20/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

struct Task {
    var id: String? = ""
    var taskText: String? = ""
    var isCompleted: Bool? = false
    
    init(id: String, taskText: String, isCompleted: Bool = false) {
        self.id = id
        self.taskText = taskText
        self.isCompleted = isCompleted
    }
    
}
