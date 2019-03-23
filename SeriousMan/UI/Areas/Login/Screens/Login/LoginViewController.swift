//
//  LoginViewController.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

final class LoginViewController: BaseViewController {
    
    
    
}

// MARK: IBAction

private extension LoginViewController {
    
    @IBAction func loginButtonClicked() {
        getPresenter()?.goOperational()
    }
    
    @IBAction func onboardingButtonClicked() {
        getPresenter()?.goOnboarding()
    }
    
}

// MARK: LoginViewProtocol

extension LoginViewController: LoginViewProtocol {}

// MARK: Private

private extension LoginViewController {
    
    func getPresenter() -> LoginPresenterProtocol? {
        return presenter as? LoginPresenterProtocol
    }
    
}
