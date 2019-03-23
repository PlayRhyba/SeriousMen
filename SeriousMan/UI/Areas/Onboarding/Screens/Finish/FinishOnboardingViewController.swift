//
//  FinishOnboardingViewController.swift
//  SeriousMan
//
//  Created by Oleksandr Snigurskyi on 22.03.19.
//  Copyright © 2019 Spark Networks. All rights reserved.
//

final class FinishOnboardingViewController: BaseViewController {
    
    
    
}

// MARK: IBAction

private extension FinishOnboardingViewController {
    
    @IBAction func doneButtonClicked() {
        getPresenter()?.goOperational()
    }
    
}

// MARK: FinishOnboardingViewProtocol

extension FinishOnboardingViewController: FinishOnboardingViewProtocol {}

// MARK: Private

private extension FinishOnboardingViewController {
    
    func getPresenter() -> FinishOnboardingPresenterProtocol? {
        return presenter as? FinishOnboardingPresenterProtocol
    }
    
}
