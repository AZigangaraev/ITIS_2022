//
//  ViewController.swift
//  UIKitBasicsClasswork
//
//  Created by Данил Терлецкий on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    var name: String = "First vc"

    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var submitButton: UIButton!

    @IBAction private func submitTap() {
        print("Sumbitting with \(loginField.text ?? ""): \(passwordField.text ?? "")")

        let anotherVC: ViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "ViewController")

        if name == "First vc" {
            anotherVC.name = "Second vc"
            navigationController?.pushViewController(anotherVC, animated: true)
        } else {
            let navigationController = UINavigationController(rootViewController: anotherVC)
            navigationController.modalPresentationStyle = .fullScreen
            // Показываем контроллер модально
            present(navigationController, animated: true)
        }
    }

    @objc private func closeTap() {
        if navigationController?.viewControllers.count ?? 1 == 1 {
            // presentingViewController - контроллер, презентующий текущий VC
            // presentedViewController - контроллер, который был показан из текущего VC
            presentingViewController?.dismiss(animated: true)
        }
        navigationController?.popViewController(animated: true)
    }



    func debug(_ function: StaticString = #function) {
        print("\(name): \(function)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close", style: .plain, target: self,
            action: #selector(closeTap))

//        debug()
    }

    // Перед каждым появлением контроллера (после переключения вкладки, например)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

//        debug()
    }

    // После появления контроллера, после того, как он полностью загрузился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

//        debug()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

//        debug()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

//        debug()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

//        debug()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

//        debug()
    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()

        debug()
    }

}

