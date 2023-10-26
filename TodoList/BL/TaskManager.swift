//
//  TaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

class TaskManager: ITaskManager {
	private var overolTasks: [Tasks] = []
	func addTasks(tasks: [Tasks]) {
		for task in tasks {
			overolTasks.append(task)
		}
	}
	func getAllTasks() -> [Tasks] {
		return overolTasks
	}
	func completeTask() -> [Tasks] {
		overolTasks.filter({ $0.completed != false })
	}
	func notCompleteTask() -> [Tasks] {
		overolTasks.filter({ $0.completed != true })
	}
}
