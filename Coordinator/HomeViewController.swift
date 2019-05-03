//
//  HomeViewController.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  weak var coordinator: HomeCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    self.title = "Home"
  }
  
  @IBAction func onModule1(_ sender: Any) {
    coordinator?.startModule1()
  }
  
  @IBAction func onModule2(_ sender: Any) {
  }
  
}
