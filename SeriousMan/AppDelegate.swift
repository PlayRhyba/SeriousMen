//
//  AppDelegate.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import SwinjectStoryboard

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private let container = DependencyManager.makeContainer()
    
    // MARK: Application Lifecle
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupInitialView()
        
        return true
    }
    
}

// MARK: Private

private extension AppDelegate {
    
    func setupInitialView() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.window = window
        
        var router = container.resolve(RouterProtocol.self)!
        router.window = window
        router.switch(to: .login)
    }
    
}
