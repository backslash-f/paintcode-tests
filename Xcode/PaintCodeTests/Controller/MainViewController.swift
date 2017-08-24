//
//  MainViewController.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/24/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        hideNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        showNavigationBar()
    }
}
