//
//  OnboardingNavigator.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 23.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import UIKit

final class OnboardingNavigator {
    
    enum Destination {
        
    }
    
    private let navigationController: UINavigationController
    
    // MARK: Initialization
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}

// MARK: Navigator

extension OnboardingNavigator: Navigator {
    
    func navigate(to destination: OnboardingNavigator.Destination) {
        
    }
    
}
