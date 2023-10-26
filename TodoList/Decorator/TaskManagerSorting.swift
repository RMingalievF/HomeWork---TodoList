//
//  TaskManagerSorting.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 26.10.2023.
//

import Foundation

class TaskManagerSorting: TaskManagerDecorator {
	override func getAllTasks() -> [Tasks] {
		super.getAllTasks().sorted(by: { $0.title > $1.title })
	}
	override func completedTask() -> [Tasks] {
		super.completedTask()
	}
	override func notCompletedTask() -> [Tasks] {
		super.notCompletedTask().sorted(by: { $0.title > $1.title })
	}
	override func addTasks(tasks: [Tasks]) {
		super.addTasks(tasks: tasks)
	}
}
