//
//  CustomAlertManager.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 16/2/22.
//

import Foundation

enum DefaultAlertType: Int {
    case none
    case succesLogin
    case failureLogin
}

struct CustomAlertManager {
    
    var type: DefaultAlertType?
    
    // Success Login
    var successLoginTitle = LocalizedKeys.Login.titleAlertLoginSuccess
    var successLoginMessage = LocalizedKeys.Login.messageAlertLoginSuccess
    
    
    // Failure Login
    var failureLoginTitle = LocalizedKeys.Login.titleAlertLoginFailure
    var failureLoginMessage = LocalizedKeys.Login.messageAlertLogFailure
      
    // General Title Buttons
    var primaryButton = LocalizedKeys.General.generalAccept
    var secondButton = LocalizedKeys.General.generalCancel
    
    init(type: DefaultAlertType) {
        self.type = type
    }
}
