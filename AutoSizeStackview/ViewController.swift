//
//  ViewController.swift
//  AutoSizeStackview
//
//  Created by Yuchen Zhong on 2017-12-02.
//  Copyright © 2017 Yuchen. All rights reserved.
//

import UIKit

class TableviewCell: UITableViewCell {
    @IBOutlet var stackView: UIStackView!
}

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath) as! TableviewCell
        for i in 1...indexPath.row + 1 {
            let label = UILabel()
            label.text = "Row \(indexPath.row), Label \(i)"
            cell.stackView.addArrangedSubview(label)
        }
        return cell
    }
}
