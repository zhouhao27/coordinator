//
//  RootCoordinator.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import UIKit

class RootCoordinator: Coordinator {
  weak var window: UIWindow!
  var homeCoordinator: HomeCoordinator?
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    let vc = LoginViewController.instantiate(bundle: "Main")
    self.window.rootViewController = vc
    vc.coordinator = self
  }
  
  func afterLogin() {
    let navigator = UINavigationController()
    if homeCoordinator == nil {
      self.homeCoordinator = HomeCoordinator(navigator: navigator)
    }
    // replace the root of the window
    self.homeCoordinator!.start()
    self.window.rootViewController = navigator
  }
}
