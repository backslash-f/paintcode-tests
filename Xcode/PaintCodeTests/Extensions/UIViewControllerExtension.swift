//
//  UIViewControllerExtension.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/24/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func showNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
