//
//  ScreenView.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

import SVProgressHUD

protocol ScreenViewProtocol: ViewProtocol {
    
    func showHUD(status: String?)
    func showHUD(progress: Float)
    func show(errorMessage: String?)
    func dismissHUD()
    
}

extension ScreenViewProtocol {
    
    func showHUD(status: String? = nil) {
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.show(withStatus: status)
    }
    
    func showHUD(progress: Float) {
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.showProgress(progress)
    }
    
    func show(errorMessage: String?) {
        SVProgressHUD.showError(withStatus: errorMessage)
    }
    
    func dismissHUD() {
        SVProgressHUD.dismiss()
    }
    
}
