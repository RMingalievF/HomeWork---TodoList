//
//  TaskManagerDecorator.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 26.10.2023.
//

import Foundation

class TaskManagerDecorator: ITaskManager {
	private let decoratorTasks: ITaskManager
	
	init(decoratorTasks: ITaskManager) {
		self.decoratorTasks = decoratorTasks
	}
	func addTasks(tasks: [Tasks]) {
		decoratorTasks.addTasks(tasks: tasks )
	}
	
	func getAllTasks() -> [Tasks] {
		decoratorTasks.getAllTasks()
	}
	
	func completedTask() -> [Tasks] {
		decoratorTasks.completedTask()
	}
	
	func notCompletedTask() -> [Tasks] {
		decoratorTasks.notCompletedTask()
	}
	
	func removeTask(task: Tasks) {
		decoratorTasks.removeTask(task: task)
	}
}
