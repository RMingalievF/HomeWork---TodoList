//
//  ITaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

protocol ITaskManager {
	func addTasks(tasks: Task)
	func getAllTasks() -> [Task]
//	func completedTask() -> [Task]
//	func notCompletedTask() -> [Task]
}
