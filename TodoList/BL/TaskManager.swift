//
//  TaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

final class TaskManager {
	private var allTasks: [Task] = []
	func addTasks(tasks: Task ) {
			allTasks.append(tasks)
	}
	func addTask(task: Task) {
		allTasks.append(task)
	}
	func getAllTasks() -> [Task] {
		return allTasks
	}
	func removeTask(task: Task) {
	}
}
extension TaskManager: ITaskManager { }
