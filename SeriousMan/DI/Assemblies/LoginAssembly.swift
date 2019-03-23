//
//  LoginAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class LoginAssembly: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(LoginViewController.self) { r, vc in
            vc.presenter = r.resolve(LoginPresenterProtocol.self)
        }
        
        container.register(LoginPresenterProtocol.self) { c in
            let router = c.resolve(RouterProtocol.self)!
            
            return LoginPresenter(router: router)
        }
    }
    
}
