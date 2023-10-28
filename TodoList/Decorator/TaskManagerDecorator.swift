//
//  TaskManagerDecorator.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 26.10.2023.
//

// NOTE: let importantTask = task as? ImportantTask теперь в importantTask будет доступно свойство priority

import Foundation

final class TaskManagerDecorator: ITaskManager {
	let taskManager: ITaskManager
	init(taskManager: ITaskManager) {
		self.taskManager = taskManager
	}

	func addTasks(tasks: [Tasks]) {
		taskManager.addTasks(tasks: tasks )
	}
	func getAllTasks() -> [Tasks] {
		sorted(tasks: taskManager.getAllTasks())
	}
	func completedTask() -> [Tasks] {
		sorted(tasks: taskManager.completedTask())
	}
	func notCompletedTask() -> [Tasks] {
		sorted(tasks: taskManager.notCompletedTask())
	}
}

private extension TaskManagerDecorator {
	func sorted(tasks: [Tasks]) -> [Tasks] {
		tasks.sorted {
			if let task0 = $0 as? ImportantTask, let task1 = $1 as? ImportantTask {
				return task0.taskPriority.rawValue > task1.taskPriority.rawValue
			}
			if $0 is ImportantTask, $1 is RegularTask {
				return true
			}
			if $0 is RegularTask, $1 is ImportantTask {
				return false
			}
			return true
		}
	}
}
