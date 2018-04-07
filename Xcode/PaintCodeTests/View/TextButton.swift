//
//  TextButton.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 07.04.18.
//  Copyright © 2018 backslash-f. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class TextButton: UIButton {

    // MARK: Properties

    @IBInspectable var text: String = "HelloWorld!" {
        didSet {
            setNeedsDisplay() // Forces PaintCode to redraw.
        }
    }

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
        StyleKit.drawTextButton(frame: rect, buttonLabelText: text)
    }
}
