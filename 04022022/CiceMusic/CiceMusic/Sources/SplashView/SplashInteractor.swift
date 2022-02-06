//
//  SplashInteractor.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 6/2/22.
//

import Foundation

// Input del Interactor
protocol SplashInteractorInputProtocol {
    func fetchDataFromWebServiceInteractor()
}

final class SplashInteractor: BaseInteractor<SplashInteractorOutputProtocol> {
    
}

// Input del Interactor
extension SplashInteractor: SplashInteractorInputProtocol {
    func fetchDataFromWebServiceInteractor() {
        print("AQUI AIDE")
    }
}

