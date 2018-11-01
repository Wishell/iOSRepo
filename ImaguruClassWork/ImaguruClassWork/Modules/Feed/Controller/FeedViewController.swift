//  
//  FeedViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FeedViewController: UIViewController {
    
    var model: FeedModelInput!
    lazy var contentView: FeedViewInput = { return view as! FeedViewInput }()
    private let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.items = [Article(title: "first",text: "first text"),Article(title: "second",text: "second text")]
        contentView.registrateTable = {[unowned self] (tableView) in
            tableView.dataSource = self.dataSource
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
    }
        contentView.prepareTable()
        
    
}
}
// MARK: - FeedModelOutput
extension FeedViewController: FeedModelOutput {}

// MARK: - FeedViewControllerInput
extension FeedViewController: FeedViewControllerInput {}
