//
//  ITaskManager.swift
//  TodoList
//
//  Created by Руслан Мингалиев on 19.10.2023.
//

import Foundation

protocol ITaskManager {
	func addTasks(tasks: [Tasks])
	//func deleteTasks()
	func getAllTasks() -> [Tasks]
	//func getCompletedTasks()
	//func getNotCompletedTasks()
}
