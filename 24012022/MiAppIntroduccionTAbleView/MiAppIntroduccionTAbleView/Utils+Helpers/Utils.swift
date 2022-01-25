//
//  Utils.swift
//  MiAppIntroduccionTAbleView
//
//  Created by Aide Alvarado on 25/1/22.
//

import UIKit

protocol ReuseIdentifierView: AnyObject{
    static var defaultReuseIdentifier: String { get }
    }

extension ReuseIdentifierView where Self: UIView{
    static var defaultReuseIdentifier: String { return NSStringFromClass(self).components(separatedBy: ".").last!
        
    }
}
