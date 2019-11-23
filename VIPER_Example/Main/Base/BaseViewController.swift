//
//  BaseViewController.swift
//  VIPER_Example
//
//  Created by Malik Usman on 15/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      if #available(iOS 11.0, *) {
          navigationController?.navigationBar.prefersLargeTitles = true
      }
    }
    
}
