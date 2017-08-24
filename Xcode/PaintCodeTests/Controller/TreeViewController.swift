//
//  TreeViewController.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/24/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import Foundation
import UIKit

class TreeViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var treeView: TreeView!
    
    // MARK: - Actions
    
    @IBAction func colorButtonPressed(_ sender: UIButton) {
        
        // Get color references.
        let red = CIColor(color: sender.backgroundColor!).red
        let green = CIColor(color: sender.backgroundColor!).green
        let blue = CIColor(color: sender.backgroundColor!).blue
        let alpha = CIColor(color: sender.backgroundColor!).alpha
        
        // Update the PaintCode generated icon.
        treeView.redColor = red
        treeView.greenColor = green
        treeView.blueColor = blue
        treeView.alpha = alpha
    }
}
