//
//  SignInCoordinator.swift
//  OnlineShop
//
//  Created by Teacher on 18.02.2023.
//

import UIKit

class SignInCoordinator {
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)

    private weak var navigationController: UINavigationController?

    @MainActor
    func start() -> UIViewController {
        let controller: LoginViewController = storyboard.instantiateViewController(identifier: "LoginViewController")
        let presenter = LoginPresenter(
            view: controller,
            confirmSignIn: { [self] in
                showConfirmation()
            }
        )
        controller.presenter = presenter
        let navigationController = UINavigationController(rootViewController: controller)
        self.navigationController = navigationController
        return navigationController
    }

    private func showConfirmation() {
        let controller: ConfirmationController = storyboard.instantiateViewController(identifier: "ConfirmationController")
        controller.presenter = ConfirmationPresenter()
        navigationController?.pushViewController(controller, animated: true)
    }
}
