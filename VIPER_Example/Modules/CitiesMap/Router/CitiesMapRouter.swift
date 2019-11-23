//
//  CitiesMapRouter.swift
//  VIPER_Example
//
//  Created by Malik Usman on 14/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import Foundation
import UIKit

class CitiesMapRouter {
    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> CitiesMapViewController {
        let viewController = CitiesMapViewController.instantiate(fromAppStoryboard: .CitiesMap)
        let presenter = CitiesMapPresenter()
        let router = CitiesMapRouter()
        let interactor = CitiesMapInteractor()

        viewController.presenter = presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension CitiesMapRouter: CitiesMapWireframe {
    // TODO: Implement wireframe methods
}
