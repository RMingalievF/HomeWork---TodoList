//
//  TaskManagerSorting.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 26.10.2023.
//

import Foundation

class TaskManagerSorting: TaskManagerDecorator {
	//private var allTasks: [Tasks] = []
	required init(decorator: TaskManagerDecorator) {
		super.init(decoratorTasks: decorator)
	}
	override func getAllTasks() -> [Tasks] {
		super.getAllTasks().sorted(by: { $0.title > $1.title })
	}
}
