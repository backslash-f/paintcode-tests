//
//  CustomCell.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 03.03.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    // MARK: - Public  Properties
    
    // Option that should currently be displayed. Default is .star (for no particular reason).
    var option: OptionsView.Option = .star {
        didSet {
            iconView.currentOption = option
            updateLabelText()
        }
    }

    // MARK: - Private Properties

    @IBOutlet private weak var iconView: OptionsView!
    @IBOutlet private weak var label: UILabel!
}

// MARK: - Private

private extension CustomCell {
    
    func updateLabelText() {
        switch option {
        case .star:
            label.text = "Star"
        case .tree:
            label.text = "Tree"
        }
    }
}
