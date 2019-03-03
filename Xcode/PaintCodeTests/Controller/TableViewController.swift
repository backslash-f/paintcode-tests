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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()

        if let customCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomCell {
            cell = customCell

            // Icon from PaintCode. In this example I'll be using two different icons, that's why I first create this
            // placeholder `UIView`.
            var icon = UIView(frame: customCell.iconView.frame)

            if indexPath.row < 20 {
                icon = StarView(frame: icon.frame)
                customCell.label.text = "Star"

            } else {
                icon = TreeView(frame: icon.frame)
                customCell.label.text = "Tree"
            }

            customCell.iconView.addSubview(icon)
        }

        return cell
    }
}
