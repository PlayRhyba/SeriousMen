//
//  ScreenPresenter.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

protocol ScreenPresenterProtocol: PresenterProtocol {
    
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
    
}

class ScreenPresenter: Presenter, ScreenPresenterProtocol {
    
    // MARK: ScreenPresenterProtocol
    
    func viewDidLoad() {}
    
    func viewWillAppear() {}
    
    func viewDidAppear() {}
    
    func viewWillDisappear() {}
    
    func viewDidDisappear() {}
    
}
