//
//  TaskManagerDecorator.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 26.10.2023.
//

// NOTE: let importantTask = task as? ImportantTask теперь в importantTask будет доступно свойство priority

import Foundation

class TaskManagerDecorator: ITaskManager {
	private let decoratorTasks: ITaskManager
	init(decoratorTasks: ITaskManager) {
		self.decoratorTasks = decoratorTasks
	}
//	private func sorted(tasks: [Tasks]) -> [Tasks] {
//	}
	func addTasks(tasks: [Tasks]) {
		decoratorTasks.addTasks(tasks: tasks )
	}
	func getAllTasks() -> [Tasks] {
		decoratorTasks.getAllTasks().sorted(by: { $0.title > $1.title}) // для проверки, временно
	}
	func completedTask() -> [Tasks] {
		decoratorTasks.completedTask()
	}
	func notCompletedTask() -> [Tasks] {
		decoratorTasks.notCompletedTask()
	}
}
