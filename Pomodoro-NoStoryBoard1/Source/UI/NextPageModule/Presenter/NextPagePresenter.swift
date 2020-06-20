//
//  NextPagePresenter.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by Andrei on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

protocol NextPagePresenterProtocol: class {
}

class NextPagePresenter {
    private weak var view: NextPageViewProtocol!

    required init(view: NextPageViewProtocol) {
        self.view = view
    }
}

extension NextPagePresenter: NextPagePresenterProtocol {
}
