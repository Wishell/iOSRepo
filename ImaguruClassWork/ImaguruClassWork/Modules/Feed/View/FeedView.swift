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
}

final class FeedView: UIView {
    

    @IBOutlet weak var tableView: UITableView!
    var registrateTable: ((UITableView)->Void)?
    
}

// MARK: - FeedViewInput
extension FeedView: FeedViewInput {
    func display(_ items: [Article]) {
        
    }
    func prepareTable() {
        registrateTable?(tableView)
    }
}


