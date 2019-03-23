//
//  CoreAssembly.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject

final class CoreAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(RouterProtocol.self) { _ in Router() }
            .inObjectScope(.container)
    }
    
}
