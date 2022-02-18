//
//  GenericWebPresenter.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 18/2/22.
//

import Foundation

protocol GenericWebPresenterInputProtocol {
    
}

final class GenericWebPresenter {
    
    var viewController: GenericWebOutputPresenterProtocol?
    
}

extension GenericWebPresenter: GenericWebPresenterInputProtocol{
    
}

