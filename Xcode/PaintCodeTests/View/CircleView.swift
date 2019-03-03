//
//  CircleView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 27.01.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import Foundation
import UIKit

/// Conform to this protocol to keep track of CircleView events.
protocol CircleViewDelegate {

    /// The clockwise animation is completed, that is: the angle changed from 0 to 360 degrees.
    func didCompleteAnimation()
}

class CircleView: UIView {
    
    // MARK: - Properties

    var delegate: CircleViewDelegate?
    
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
        if angle == 360 {
            stopAnimating()
            delegate?.didCompleteAnimation()
        }
        
        angle += 1
    }
}
