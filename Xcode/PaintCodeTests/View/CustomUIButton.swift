//
//  CustomUIButton.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 27.07.20.
//  Copyright © 2020 backslash-f. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIButton: UIButton {

    // MARK: Properties

    override var isHighlighted: Bool {
        didSet {
            setNeedsDisplay()
        }
    }

    override var isSelected: Bool {
        didSet {
            setNeedsDisplay()
        }
    }

    override var isEnabled: Bool {
        didSet {
            setNeedsDisplay()
        }
    }

    // MARK: Lifecycle

    override func draw(_ rect: CGRect) {
        StyleKit.drawWatchButton(frame: rect, highlighted: isHighlighted)
    }
}

