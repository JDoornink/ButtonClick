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

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "Congratulations you made it to the next page"
    }
}

extension NextPageViewController: NextPageViewProtocol {
}
