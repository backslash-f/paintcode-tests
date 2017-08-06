//
//  ClockHandViewController.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 8/5/17.
//  Copyright © 2017 backslash-f. All rights reserved.
//

import UIKit

class ClockHandViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var clockHandView: ClockHandView!
    @IBOutlet weak var touchedViewIDLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupClockHandView()
        animateClockHand()
    }
}

// MARK: - ClockHandView Delegate

extension ClockHandViewController: ClockHandDelegate {
    func didTouchUIElement(withID id: Int) {
        touchedViewIDLabel.text = "ID of touched view (from PaintCode): \(id)"
    }
}

// MARK: - Private

fileprivate extension ClockHandViewController {
    
    func setupClockHandView() {
        clockHandView.delegate = self
    }
    
    func animateClockHand() {
        clockHandView.startAnimating()
    }
}
