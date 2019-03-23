//
//  OperationalNavigator.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 23.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import UIKit

final class OperationalNavigator {
    
    enum Destination {
        
    }
    
    private let tabBarController: OperationalTabBarController
    
    // MARK: Initialization
    
    init(tabBarController: OperationalTabBarController) {
        self.tabBarController = tabBarController
    }
    
}

// MARK: Navigator

extension OperationalNavigator: Navigator {
    
    func navigate(to destination: OperationalNavigator.Destination) {
        
    }
    
}
