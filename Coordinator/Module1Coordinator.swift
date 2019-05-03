//
//  Module1Coordinator.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import UIKit

class Module1Coordinator: Coordinator {
  
  var navigator: UINavigationController
  
  init(navigator: UINavigationController) {
    self.navigator = navigator
  }

  func start() {
    let vc = Module1ViewController.instantiate(bundle: "Module1")
    self.navigator.pushViewController(vc, animated: true)  
  }
}
