//
//  ClockHandView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/5/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import Foundation
import UIKit

/// Conform to this protocol to be notified on the ID of touched elements.
/// The ID comes from PaintCode.
@objc protocol ClockHandDelegate {
    @objc optional func didTouchUIElement(withID id: Int)
}

@IBDesignable class ClockHandView: UIView {
    
    // MARK: - Properties
    
    var delegate: ClockHandDelegate?
    
    var rotation: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    fileprivate var animationTimer = Timer()
    
    // MARK: - Lifecycle
    
    override func draw(_ rect: CGRect) {
        StyleKit.drawClockHand(frame: rect, rotation: rotation)
    }
}

// MARK: - Public

extension ClockHandView {
    
    func startAnimating() {
        animationTimer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(updateRedPathRotation),
            userInfo: nil,
            repeats: true
        )
        animationTimer.fire()
    }
    
    func stopAnimating() {
        animationTimer.invalidate()
    }
    
    @objc func updateRedPathRotation() {
        rotation += 1
        
        // FIXME:
        // The downside of this approach is that the var `touchedElementID`
        // will be deleted every time that the StyleKit class is exported
        // again. In this case, the var needs to be re-added:
        //
        // `static var touchedElementID: CGFloat?`
        //
        // `StyleKit.touchedElementID = touchedElementID`
        guard let id = StyleKit.touchedElementID, id > 0 else {
            return
        }
        
        delegate?.didTouchUIElement?(withID: Int(id))
    }
}
