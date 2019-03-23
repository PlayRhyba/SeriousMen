//
//  Router.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import UIKit

protocol Navigator {
    
    associatedtype Destination
    
    func navigate(to destination: Destination)
    
}

enum Area {
    
    case login
    case onboarding
    case operational
    
}

protocol RouterProtocol {
    
    var onboardingNavigator: OnboardingNavigator? { get }
    var operationalNavigator: OperationalNavigator? { get }
    var window: UIWindow? { get set }
    
    func `switch`(to area: Area)
    
}

final class Router {
    
    private(set) var onboardingNavigator: OnboardingNavigator?
    private(set) var operationalNavigator: OperationalNavigator?
    var window: UIWindow?
    
}

// MARK: RouterProtocol

extension Router: RouterProtocol {
    
    func `switch`(to area: Area) {
        window?.rootViewController = {
            switch area {
            case .login:
                return R.storyboard.login.instantiateInitialViewController()
            case .onboarding:
                let navigationController = R.storyboard.onboarding.instantiateInitialViewController()!
                onboardingNavigator = OnboardingNavigator(navigationController: navigationController)
                
                return navigationController
            case .operational:
                let tabBarController = R.storyboard.operational.instantiateInitialViewController()!
                operationalNavigator = OperationalNavigator(tabBarController: tabBarController)
                
                return tabBarController
            }
        }()
    }
    
}
