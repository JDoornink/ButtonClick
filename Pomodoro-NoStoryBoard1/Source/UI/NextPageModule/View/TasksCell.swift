//
//  TasksViewCell.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/20/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

class TasksCell: UITableViewCell {
    
    var tasksLabel  = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(tasksLabel)
        configureTasksLabel()
        setTasksViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 8 - TABLEVIEWPOPULATION - Set up the properties appropriately
    func set(task: Task) {
        tasksLabel.text = task.taskText
    }
    
    func configureTasksLabel() {
        //Wraps tasksLabel if necessary
        tasksLabel.numberOfLines = 0
        tasksLabel.adjustsFontSizeToFitWidth = true
        tasksLabel.text = "First Task"
    }
    
    // MARK: 9 - TABLEVIEWPOPULATION - Set up the constraints (Note: these CAN be pulled out to its own helper method if desired)
    func setTasksViewConstraints() {
        tasksLabel.translatesAutoresizingMaskIntoConstraints = false
        tasksLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        tasksLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        tasksLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        tasksLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
