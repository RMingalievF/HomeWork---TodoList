//
//  TodoListTableViewController.swift

import UIKit

final class TodoListTableViewController: UITableViewController {
	var taskManager: ITaskManager! // swiftlint:disable:this implicitly_unwrapped_optional
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "TodoList"
		setup()
	}
}
extension TodoListTableViewController {
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		taskManager.getAllTasks().count
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let task = taskManager.getAllTasks()[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		configureCell(cell, with: task)
		return cell
	}
}

private extension TodoListTableViewController {
	private func setup() {
		self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
	}
	func getTaskForIndex(_ indexPath: IndexPath) -> Tasks {
		taskManager.getAllTasks()[indexPath.row]
	}
	func configureCell(_ cell: UITableViewCell, with task: Tasks) {
		var contentConfiguration = cell.defaultContentConfiguration()
		if let task = task as? ImportantTask {
			contentConfiguration.secondaryText = "Deadline: \(task.deadLine.formatted())"
		}
		contentConfiguration.text = task.title
		cell.contentConfiguration = contentConfiguration
	}
}
