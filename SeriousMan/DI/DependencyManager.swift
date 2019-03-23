//
//  DependencyManager.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class DependencyManager {
    
    static func makeContainer() -> Container {
        Container.loggingFunction = nil
        
        let container = SwinjectStoryboard.defaultContainer
        
        let assemblies: [Assembly] = [CoreAssembly(),
                                      LoginAssembly(),
                                      FinishOnboardingAssembly(),
                                      ProfileAssembly(),
                                      ChatAssembly(),
                                      MeAssembly()]
        
        _ = Assembler(assemblies, container: container)
        
        return container
    }
    
}
