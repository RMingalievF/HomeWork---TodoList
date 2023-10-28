//
//  TaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

final class TaskManager {
	private var allTasks: [Tasks] = []
	func addTasks(tasks: [Tasks]) {
		for task in tasks {
			allTasks.append(task)
		}
	}
	func addTask(task: Tasks) {
		allTasks.append(task)
	}
	func getAllTasks() -> [Tasks] {
		return allTasks
	}
	func completedTask() -> [Tasks] {
		allTasks.filter { $0.completed }
	}
	func notCompletedTask() -> [Tasks] {
		allTasks.filter { !$0.completed }
	}
	func removeTask(task: Tasks) {
		allTasks.removeAll { $0 === task }
	}
}
extension TaskManager: ITaskManager { }
