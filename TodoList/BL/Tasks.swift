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

final class RegularTask: Tasks {
}

final class ImportantTask: Tasks {
	enum TaskPriority: Int {
		case low
		case medium
		case high
	}
	let taskPriority: TaskPriority
	var date: Date
	var deadLine: Date {
		switch taskPriority {
		case .high:
			return Calendar.current.date(byAdding: .day, value: 1, to: date)! // swiftlint:disable:this force_unwrapping
		case .medium:
			return Calendar.current.date(byAdding: .day, value: 2, to: date)! // swiftlint:disable:this force_unwrapping
		case .low:
			return Calendar.current.date(byAdding: .day, value: 3, to: date)! // swiftlint:disable:this force_unwrapping
		}
	}
	init(title: String, date: Date, taskPriority: TaskPriority) {
		self.taskPriority = taskPriority
		self.date = date
		super.init(title: title, completed: false)
	}
}
