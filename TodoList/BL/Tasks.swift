//
//  Tasks.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

class Tasks {
	var title: String
	var completed: Bool

	init(title: String, completed: Bool) {
		self.title = title
		self.completed = completed
	}
}

class RegularTask: Tasks {
}

class ImportantTask: Tasks {
	enum TaskPriority {
		case high
		case medium
		case low
	}
	
	let taskPriority: TaskPriority
	let deadLine = Date()
	init(title: String, taskPriority: TaskPriority) {
		self.taskPriority = taskPriority
		super.init(title: title, completed: false)
	}
}
