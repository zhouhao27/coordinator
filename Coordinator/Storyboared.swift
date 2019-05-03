//
//  Storyboared.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
  static func instantiate(bundle name: String) -> Self  
}

extension Storyboarded where Self: UIViewController {
  static func instantiate(bundle name: String) -> Self {
    
    let fullName = NSStringFromClass(self)
    
    // this splits by the dot and uses everything after, giving "MyViewController"
    let className = fullName.components(separatedBy: ".")[1]
    
    // load our storyboard
    let storyboard = UIStoryboard(name: name, bundle: nil)
    
    // instantiate a view controller with that identifier, and force cast as the type that was requested
    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
}

extension UIViewController: Storyboarded {
}
