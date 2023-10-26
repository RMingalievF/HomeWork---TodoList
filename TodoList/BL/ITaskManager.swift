//
//  ITaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

protocol ITaskManager {
	func addTasks(tasks: [Tasks])
	func getAllTasks() -> [Tasks]
	func completedTask() -> [Tasks]
	func notCompletedTask() -> [Tasks]
	func removeTask(task: Tasks)
}

extension TaskManager: ITaskManager { }

extension ImportantTask.TaskPriority: CustomStringConvertible {
	var description: String {
		switch self {
		case .high:
			return "!!!"
		case .medium:
			return "!!"
		case .low:
			return "!"
		}
	}
}
