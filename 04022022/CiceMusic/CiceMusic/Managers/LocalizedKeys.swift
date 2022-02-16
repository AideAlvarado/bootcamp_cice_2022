//
//  LocalizedKeys.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 16/2/22.
//

import Foundation

struct LocalizedKeys {
    
    // General
    struct General {
        static let generalAccept = "general_accept".localized
        static let generalCancel = "general_cancel".localized
    }
    
    struct Login {
        static let titleAlertLoginSuccess = "title_my_alert_login_succes".localized
        static let messageAlertLoginSuccess = "message_my_alert_login_succes".localized
        static let titleAlertLoginFailure = "title_my_alert_login_failure".localized
        static let messageAlertLogFailure = "message_my_alert_login_failure".localized    }
    
    
    //REGISTRO





    //BUROFAX
}

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
