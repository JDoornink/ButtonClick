//
//  NextPageViewController.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

protocol NextPageViewProtocol: class {
}

class NextPageViewController: UIViewController {
    @IBOutlet var label: UILabel!

    var presenter: NextPagePresenterProtocol!
    
    // MARK: 1 - TABLEVIEWPOPULATION - Create an empty array of objects
    var tasks: [Task] = []
    
    // MARK: 2 - TABLEVIEWPOPULATION - Get a reference to your table
    var tasksView = UITableView()
    
    struct Cells {
        static let tasksCell = "TasksCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tasks"
        label.text = "Congratulations you made it to the next page"
        view.backgroundColor = .systemGray
        tasks = fetchData()
        // MARK: 3 - TABLEVIEWPOPULATION - Configure the tableView
        configureTableView()
        
    }
    
    func configureTableView () {
        view.addSubview(tasksView)
        // MARK: 4 - TABLEVIEWPOPULATION - Set delegates
        setTableViewDelegates()
        // set row height - TODO = make sizing dynamic based on text returned
        tasksView.rowHeight = 50
        // register cells
        tasksView.register(TasksCell.self, forCellReuseIdentifier: Cells.tasksCell)
        // set constraints
        tasksView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        // self refers to the NextPageViewController
        tasksView.delegate = self
        tasksView.dataSource = self
    }
}

extension NextPageViewController: NextPageViewProtocol {
}

// MARK: 5 - TABLEVIEWPOPULATION - Conform to Delegates
extension NextPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // MARK: 6 - TABLEVIEWPOPULATION - Specify how many rows we have
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // MARK: 7 - TABLEVIEWPOPULATION - Specify what are we going to show in the cell
        // dequeueReusableCell gets called to generate a cell right before its viewable
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.tasksCell) as! TasksCell
        let task = tasks[indexPath.row]
        cell.set(task: task)
        
        // MARK: 10 - TABLEVIEWPOPULATION - Return the cell when its completed
        return cell
    }
}

// Dummy Data: This will be pulled from a Network Call in a real app
extension NextPageViewController {
    func fetchData() -> [Task] {
        let task1 = Task(id: "23434kjl", taskText: "This is task1Text")
        let task2 = Task(id: "asdfdsf", taskText: "This is task2Text")
        let task3 = Task(id: "affasddsf", taskText: "This is task3Text", isCompleted: true)
        return [task1, task2, task3]
    }
}
