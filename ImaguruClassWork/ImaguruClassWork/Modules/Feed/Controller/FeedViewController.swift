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
    lazy var dataSource: DataSource? = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.registrateTable = { [unowned self] (tableView) in
            tableView.dataSource = self.dataSource
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
        }
        contentView.tableDataSource = {[unowned self] in return self.dataSource!}
        contentView.onTableItemTap = {[unowned self] (item) in
            let alert = UIAlertController(title: item.title, message: item.text, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        contentView.onExitTapAction={
            self.navigationController?.popToRootViewController(animated:true)
        }
        contentView.prepareTable()
    }
}
// MARK: - FeedModelOutput
extension FeedViewController: FeedModelOutput {
    func modelDidLoad() {
        dataSource?.items = model.data
    }
}

// MARK: - FeedViewControllerInput
extension FeedViewController: FeedViewControllerInput {
    func setData (_ data: RegistrationData?) {
        self.model.load(data: data ?? RegistrationData(nickname: "",email: "",password: ""))
    }
}
