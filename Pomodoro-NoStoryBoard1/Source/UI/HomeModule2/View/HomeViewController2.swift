//
//  HomeViewController2.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

// MARK: 1 - First you need to cover your View with protocol (interface)
protocol HomeViewController2ViewProtocol: class {
    func goToScreen(_ screen: UIViewController)
}

// MARK: 2 - There is your ViewController aka View that doesn't know anything about Business Logic. View delegate all decisions to the presenter.
class HomeViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    //@IBOutlet weak var homeViewButton: UIButton!
    
    // MARK: 3 - Reference to Presenter protocol (interface)
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray2
        label.text = "HomeView"
        button.setTitle("Click to Send me to Next View", for: .normal)
    }

    @IBAction func buttonClick(_ sender: Any) {
        // MARK: 5 - here you need to tell to the presenter that user tap on the button inside View. (Open HomePresenter.swift)
        presenter.didTapButton()
    }
}

// MARK: 4 - There is place where you should imlement ViewProtocol (HomeViewController2View).
extension HomeViewController2: HomeViewController2ViewProtocol {
    func goToScreen(_ screen: UIViewController) {
        // MARK: 14 - UIViewController has access to NavigationController, this is all part off UIKit. So we can call push to another screen.
        navigationController?.pushViewController(screen, animated: true)
    }
}
