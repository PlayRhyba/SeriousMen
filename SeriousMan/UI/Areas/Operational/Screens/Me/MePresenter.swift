//
//  MePresenter.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

protocol MeViewProtocol: ScreenViewProtocol {}

protocol MePresenterProtocol: ScreenPresenterProtocol {
    
    func logOut()
    
}

final class MePresenter: ScreenPresenter {
    
    private let router: RouterProtocol
    
    // MARK: Initialization
    
    init(router: RouterProtocol) {
        self.router = router
    }
    
}

// MARK: MePresenterProtocol

extension MePresenter: MePresenterProtocol {
    
    func logOut() {
        router.switch(to: .login)
    }
    
}
