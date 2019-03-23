//
//  MeAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class MeAssembly: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(MeViewController.self) { r, vc in
            vc.presenter = r.resolve(MePresenterProtocol.self)
        }
        
        container.register(MePresenterProtocol.self) { c in
            let router = c.resolve(RouterProtocol.self)!
            
            return MePresenter(router: router)
        }
    }
    
}
