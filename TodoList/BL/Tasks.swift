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
	var deadLine: Date? {
		switch taskPriority {
		case .high:
			return Calendar.current.date(byAdding: .day, value: 1, to: Date())
		case .medium:
			return Calendar.current.date(byAdding: .day, value: 2, to: Date())
		case .low:
			return Calendar.current.date(byAdding: .day, value: 3, to: Date())
		}
	}
	init(title: String, taskPriority: TaskPriority) {
		self.taskPriority = taskPriority
		super.init(title: title, completed: false)
	}
}
