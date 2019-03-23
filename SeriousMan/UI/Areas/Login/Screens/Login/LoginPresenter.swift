//
//  LoginPresenter.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

protocol LoginViewProtocol: ScreenViewProtocol {}

protocol LoginPresenterProtocol: ScreenPresenterProtocol {
    
    func goOnboarding()
    func goOperational()
    
}

final class LoginPresenter: ScreenPresenter {
    
    private let router: RouterProtocol
    
    // MARK: Initialization
    
    init(router: RouterProtocol) {
        self.router = router
    }
    
}

// MARK: LoginPresenterProtocol

extension LoginPresenter: LoginPresenterProtocol {
    
    func goOnboarding() {
        router.switch(to: .onboarding)
    }
    
    func goOperational() {
        router.switch(to: .operational)
    }
    
}
