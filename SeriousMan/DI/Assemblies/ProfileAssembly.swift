//
//  ProfileAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class ProfileAssembly: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(ProfileViewController.self) { r, vc in
            vc.presenter = r.resolve(ProfilePresenterProtocol.self)
        }
        
        container.register(ProfilePresenterProtocol.self) { _ in ProfilePresenter() }
    }
    
}
