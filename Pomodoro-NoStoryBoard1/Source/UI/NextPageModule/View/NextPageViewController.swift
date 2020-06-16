//
//  NextPageViewController.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

class NextPageViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Congratulations you made it to the next page"
    }

}
