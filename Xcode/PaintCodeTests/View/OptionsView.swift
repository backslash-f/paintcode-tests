//
//  OptionsView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 05.03.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import UIKit

@IBDesignable class OptionsView: UIView {
    
    // MARK: - Properties
    
    // Allowed options.
    enum Option {
        case star, tree
    }
    
    // Option that should currently be displayed. Default is .star (for no particular reason).
    var currentOption: Option = .star {
        didSet {
            setNeedsDisplay() // Force redrawing.
        }
    }
    
    // MARK: - Lifecycle
    
    override func draw(_ rect: CGRect) {
        drawIcon(rect)
    }
}

// MARK: - Private

private extension OptionsView {
    
    /// Logic to decide which icon to display.
    func drawIcon(_ rect: CGRect) {
        switch currentOption {
        case .star:
            StyleKit.drawStarIcon(frame: rect)
        case .tree:
            StyleKit.drawTreeIcon(frame: rect)
        }
    }
}
