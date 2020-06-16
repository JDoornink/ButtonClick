//
//  HomeViewController2.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

class HomeViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    //@IBOutlet weak var homeViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        label.text = "HomeView"
        button.setTitle("Click to Send me to Next View", for: .normal)
    }

    @IBAction func buttonClick(_ sender: Any) {
        //Send me to NextPageViewController
    }
    
}
