//  
//  FeedView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol FeedViewInput: class {
    var registrateTable: ((UITableView)->Void)? {get set}
    func prepareTable()
    func display(_ items: [Article])
    var tableDataSource : (()->DataSource)? {get set}
    var onTableItemTap: ((Article)->Void)? { get set }
}

final class FeedView: UIView {
    @IBOutlet weak var tableView: UITableView!
    var registrateTable: ((UITableView)->Void)?
    var tableDataSource : (()->DataSource)?
    var onTableItemTap: ((Article)->Void)?
}

// MARK: - FeedViewInput
extension FeedView: FeedViewInput {
    func display(_ items: [Article]) {
        
    }
    func prepareTable() {
        tableView.delegate = self
        registrateTable?(tableView)
    }
}

extension FeedView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = tableDataSource?().items[indexPath.row]
        onTableItemTap?(item ?? Article(title: "",text: ""))
    }
    
}
