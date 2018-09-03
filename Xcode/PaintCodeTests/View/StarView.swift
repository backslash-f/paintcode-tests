//
//  StarView.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 03.09.18.
//  Copyright © 2018 backslash-f. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class StarView: UIView {

    // MARK: - Lifecycle

    override func draw(_ rect: CGRect) {
        StyleKit.drawStarIcon(frame: rect)
    }
}
