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
	func completeTask() -> [Tasks]
	func notCompleteTask() -> [Tasks]
}
