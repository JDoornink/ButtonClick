//
//  HomePresenter.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by Andrei on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

// MARK: Ideally Presenter does not import UIKit, only Foundation.
import Foundation

// MARK: 6 - Cover your Presenter with the protocol (interface), View should not know anything about the presenter, View work only with presenter protocol (interface)
protocol HomePresenterProtocol: class {
    func didTapButton()
}

// MARK: 7 - Presenter that contains all business logic / routing.
class HomePresenter {
    // MARK: 8 - reference to View protocol (interface)
    private weak var view: HomeViewController2ViewProtocol!

    
    // MARK: 9 - Here is initializer for the presenter, it guarantees that Presenter can't be instantiated without reference to View protocol (interface)
    required init(view: HomeViewController2ViewProtocol) {
        self.view = view
    }
}

// MARK: - 10 There is place where you should imlement PresenterProtocol (HomePresenterProtocol).
extension HomePresenter: HomePresenterProtocol {
    func didTapButton() {
        // MARK: - 11 According to your logic (business requirements), you want to go to another Screen aka Module, for that reason we need to build this another Module, we need some entity like ModuleBuilder. (Open ModuleBuilder.swift)
        let nextPageModule = ModuleBuilder.createNextPageModule()
        
        // MARK: - 13 Now you can call View protocol func to tell system go to another screen.
        view.goToScreen(nextPageModule)
    }
}
