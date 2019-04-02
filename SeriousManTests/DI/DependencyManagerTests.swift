//
//  DependencyManagerTests.swift
//  SeriousManTests
//
//  Created by Oleksandr Snigurskyi on 02.04.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import Quick
import Nimble
import Swinject

@testable import SeriousMan

final class DependencyManagerTests: QuickSpec {
    
    override func spec() {
        describe("DependencyManager") {
            var container: Container?
            
            context("Dependencies availability") {
                beforeEach {
                    container = DependencyManager.makeContainer()
                }
                
                it("should contain router") {
                    let router = container?.resolve(RouterProtocol.self)
                    
                    expect(router).toNot(beNil())
                }
                
                it("should contain login screen presenter") {
                    let presenter = container?.resolve(LoginPresenterProtocol.self)
                    
                    expect(presenter).toNot(beNil())
                }
                
                it("should contain finish onboarding screen presenter") {
                    let presenter = container?.resolve(FinishOnboardingPresenterProtocol.self)
                    
                    expect(presenter).toNot(beNil())
                }
                
                it("should contain profile screen presenter") {
                    let presenter = container?.resolve(ProfilePresenterProtocol.self)
                    
                    expect(presenter).toNot(beNil())
                }
                
                it("should contain chat screen presenter") {
                    let presenter = container?.resolve(ChatPresenterProtocol.self)
                    
                    expect(presenter).toNot(beNil())
                }
                
                it("should contain me screen presenter") {
                    let presenter = container?.resolve(MePresenterProtocol.self)
                    
                    expect(presenter).toNot(beNil())
                }
            }
        }
    }
    
}
