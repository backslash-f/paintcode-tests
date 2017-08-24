//
//  TreeView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/24/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class TreeView: UIView {
    
    /*
     *
     * Notice - supported range for colors and alpha: 0 to 1.
     *
    */
    
    @IBInspectable var redColor: CGFloat = 0.808 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var greenColor: CGFloat = 0.808 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var blueColor: CGFloat = 0.808 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var alphaColor: CGFloat = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        StyleKit.drawTreeIcon(frame: rect,
                              resizing: .aspectFit,
                              red: redColor,
                              green: greenColor,
                              blue: blueColor,
                              alpha: alphaColor)
    }
}
