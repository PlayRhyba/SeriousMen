//
//  FinishOnboardingPresenter.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

protocol FinishOnboardingViewProtocol: ScreenViewProtocol {}

protocol FinishOnboardingPresenterProtocol: ScreenPresenterProtocol {
    
    func goOperational()
    
}

final class FinishOnboardingPresenter: ScreenPresenter {
    
    private let router: RouterProtocol
    
    // MARK: Initialization
    
    init(router: RouterProtocol) {
        self.router = router
    }
    
}

// MARK: FinishOnboardingPresenterProtocol

extension FinishOnboardingPresenter: FinishOnboardingPresenterProtocol {
    
    func goOperational() {
        router.switch(to: .operational)
    }
    
}
