//
//  ViewController.swift
//  AutoSizeStackview
//
//  Created by Yuchen Zhong on 2017-12-02.
//  Copyright © 2017 Yuchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)

        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        cell.addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 10),
            stackview.trailingAnchor.constraint(equalTo: cell.trailingAnchor, constant: -10),
            stackview.topAnchor.constraint(equalTo: cell.topAnchor, constant: 10),
            stackview.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: -10),
            ])

        for i in 1...indexPath.row + 1 {
            let label = UILabel()
            label.text = "Row \(indexPath.row), Label \(i)"
            stackview.addArrangedSubview(label)
        }


        return cell
    }
}
