//
//  MeViewController.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

final class MeViewController: BaseViewController {
    
    
    
}

// MARK: IBAction

private extension MeViewController {
    
    @IBAction func logOutButtonClicked() {
        getPresenter()?.logOut()
    }
    
}

// MARK: MeViewProtocol

extension MeViewController: MeViewProtocol {}

// MARK: Private

private extension MeViewController {
    
    func getPresenter() -> MePresenterProtocol? {
        return presenter as? MePresenterProtocol
    }
    
}
