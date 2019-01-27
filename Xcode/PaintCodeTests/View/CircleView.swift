//
//  CircleView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 27.01.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CircleView: UIView {
    
    // MARK: - Properties
    
    var angle: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }

    // MARK: - Private Properties

    private var animationTimer = Timer()
    
    // MARK: - Lifecycle
    
    override func draw(_ rect: CGRect) {
        StyleKit.drawCircleShape(frame: rect, resizing: .aspectFill, angle: angle)
    }
}

// MARK: - Interface

extension CircleView {
    
    func startAnimating() {
        animationTimer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(updateAngle),
            userInfo: nil,
            repeats: true
        )
        animationTimer.fire()
    }
    
    func stopAnimating() {
        animationTimer.invalidate()
    }
    
    @objc func updateAngle() {
        angle += 1
    }
}
