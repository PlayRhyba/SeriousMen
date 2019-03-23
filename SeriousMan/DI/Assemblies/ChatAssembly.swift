//
//  ChatAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class ChatAssembly: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(ChatViewController.self) { r, vc in
            vc.presenter = r.resolve(ChatPresenterProtocol.self)
        }
        
        container.register(ChatPresenterProtocol.self) { _ in ChatPresenter() }
    }
    
}
