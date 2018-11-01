//
//  DataSource.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class DataSource: NSObject{
    var items: [Article] = []
}

extension DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "\(UITableViewCell.self)"
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        cell.textLabel?.text = item.title
        return cell
}
}
