//
//  HomeCoordinator.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
  var navigator: UINavigationController
  var module1: Module1Coordinator?
  
  init(navigator: UINavigationController) {
    self.navigator = navigator
  }
  
  func start() {
    let vc = HomeViewController.instantiate(bundle: "Main")
    self.navigator.pushViewController(vc, animated: true)
    vc.coordinator = self    
  }
  
  func startModule1() {
    if self.module1 == nil {
      self.module1 = Module1Coordinator(navigator: self.navigator)
    }
    self.module1!.start()
  }
}
