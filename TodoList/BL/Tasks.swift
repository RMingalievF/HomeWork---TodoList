//
//  Tasks.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

enum Task {
	case regularTask(RegularTask)
	case importantTask(ImportantTask)
}
struct RegularTask {
	let ID: ID<RegularTask>
	let title: String
	let completed: Bool
}

struct ImportantTask {
	enum TaskPriority: Int {
		case low
		case medium
		case high
	}
	enum TaskStatus {
		case notStarted
		case completed
		case canceled
		case paused
	}
	let ID: ID<ImportantTask>
	let title: String
	let taskStatus: TaskStatus
	let taskPriority: TaskPriority
	let date: Date
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
}

struct ID<Tag> {
	let rawValue: String
	init(rawValue: String) {
		self.rawValue = rawValue
	}
}

extension Task {
	var regularTask: RegularTask? {
		guard case let .regularTask(regularTask) = self else {return nil}
		return regularTask
	}
	var importantTask: ImportantTask? {
		guard case let .importantTask(importantTask) = self else {return nil}
		return importantTask
	}
}

