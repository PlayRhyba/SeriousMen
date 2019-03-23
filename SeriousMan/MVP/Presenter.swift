//
//  Presenter.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import os.log

protocol PresenterProtocol: class {
    
    func initialization()
    func deinitialization()
    func attachView(_ view: ViewProtocol)
    func viewDidAttach()
    func detachView()
    func viewDidDetach()
    
}

// MARK: Default implementations

extension PresenterProtocol {
    
    func initialization() {}
    
    func deinitialization() {}
    
    func attachView(_ view: ViewProtocol) {}
    
    func viewDidAttach() {}
    
    func detachView() {}
    
    func viewDidDetach() {}
    
}

class Presenter: PresenterProtocol {
    
    weak var view: ViewProtocol?
    
    // MARK: PresenterProtocol
    
    func initialization() {
        os_log("PRESENTER ATTACHED (%@)", "\(type(of: self))")
    }
    
    func deinitialization() {
        os_log("PRESENTER DETACHED (%@)", "\(type(of: self))")
    }
    
    func attachView(_ view: ViewProtocol) {
        self.view = view
        viewDidAttach()
    }
    
    func viewDidAttach() {}
    
    func detachView() {
        view = nil
        viewDidDetach()
    }
    
    func viewDidDetach() {}
    
}
