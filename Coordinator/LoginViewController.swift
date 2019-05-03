//
//  LoginViewController.swift
//  Coordinator
//
//  Created by Zhou Hao on 3/5/19.
//  Copyright © 2019 635219. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
  weak var coordinator: RootCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func onLogin(_ sender: Any) {
    // Login logic will be handled by other components like Presenter etc
    coordinator?.afterLogin()
  }

}
