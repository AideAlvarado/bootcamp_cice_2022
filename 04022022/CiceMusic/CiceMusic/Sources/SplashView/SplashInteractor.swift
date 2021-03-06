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
    
    let splashProvider: SplashProviderInputProtocol = SplashProvider()
    
    func transformDataFromMusicServerModelToArrayGenericResult(data: MusicServerModel) -> [GenericResult] {
        var arrayGenericResult: [GenericResult] = []
        if let dataUnw = data.feed?.results {
            for item in dataUnw {
                let objc = GenericResult(artistName: item.artistName,
                                         id: item.id,
                                         name: item.name,
                                         kind: item.kind,
                                         artworkUrl100: item.artworkUrl100,
                                         url: item.url,
                                         releaseDate: item.releaseDate)
                arrayGenericResult.append(objc)
            }
        }
        return arrayGenericResult
    }
   
}

// Input del Interactor
extension SplashInteractor: SplashInteractorInputProtocol {
    func fetchDataFromWebServiceInteractor() {
        self.splashProvider.fetchData { (result) in
            switch result {
            case .success(let modelData):
                self.presenter?.setDataFromWebInteractor(data: self.transformDataFromMusicServerModelToArrayGenericResult(data: modelData))
            case .failure(let error):
                self.presenter?.setAlertMessage(error: error)
            }
        }
    }
}


