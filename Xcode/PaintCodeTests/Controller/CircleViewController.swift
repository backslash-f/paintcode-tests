//
//  CircleViewController.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 27.01.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import Foundation
import UIKit

class CircleViewController: UIViewController {

    // MARK: - Private Properties

    @IBOutlet private weak var circleView: CircleView! {
        didSet {
            circleView.startAnimating()
            circleView.delegate = self
        }
    }
}

// MARK: - CircleViewDelegate

extension CircleViewController: CircleViewDelegate {

    func didCompleteAnimation() {
        // Do whatever here. In this example, I'm programatically dismissing the screen.
        navigationController?.popViewController(animated: true)
    }
}
