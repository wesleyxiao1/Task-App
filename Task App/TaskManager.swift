//
//  TaskManager.swift
//  Task App
//
//  Created by Wesley on 7/11/18.
//  Copyright © 2018 Wesley. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Description"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
        print(tasks)
    }
}
