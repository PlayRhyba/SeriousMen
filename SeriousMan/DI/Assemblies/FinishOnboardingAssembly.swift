//
//  FinishOnboardingAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class FinishOnboardingAssembly: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(FinishOnboardingViewController.self) { r, vc in
            vc.presenter = r.resolve(FinishOnboardingPresenterProtocol.self)
        }
        
        container.register(FinishOnboardingPresenterProtocol.self) { c in
            let router = c.resolve(RouterProtocol.self)!
            
            return FinishOnboardingPresenter(router: router)
        }
    }
    
}
