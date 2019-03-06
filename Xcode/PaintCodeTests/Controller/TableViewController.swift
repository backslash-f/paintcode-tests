//
//  TableViewController.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 03.03.19.
//  Copyright © 2019 backslash-f. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // Hardcoded in this example.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40 // Hardcoded in this example.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let customCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomCell {
            // Logic around which option to display
            if indexPath.row < 20 {
                customCell.option = .star
            } else {
                customCell.option = .tree
            }
            return customCell
        }

        // Fallback.
        return UITableViewCell()
    }
}
