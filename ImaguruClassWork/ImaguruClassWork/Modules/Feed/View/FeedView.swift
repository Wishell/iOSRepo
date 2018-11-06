//
//  FeedView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol FeedViewInput: class {
    var registrateTable: ((UITableView) -> Void)? { get set }
    func prepareTable()

    var tableDataSource: (() -> DataSource)? { get set }
    var onTableItemTap: ((Article) -> Void)? { get set }
    var onExitTapAction: (() -> Void)? { get set }
}

final class FeedView: UIView {
    @IBOutlet weak var tableView: UITableView!
    var registrateTable: ((UITableView) -> Void)?
    var tableDataSource: (() -> DataSource)?
    var onTableItemTap: ((Article) -> Void)?
    var onExitTapAction: (() -> Void)?
    @IBAction func onExitTap(_ sender: Any) {
        onExitTapAction?()
    }
}

// MARK: - FeedViewInput
extension FeedView: FeedViewInput {
    func prepareTable() {
        tableView.delegate = self
        registrateTable?(tableView)
    }
}
// MARK: - UITableViewDelegate
extension FeedView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = tableDataSource?().items[indexPath.row]
        onTableItemTap?(item ?? Article(title: "", text: ""))
    }
}
