//  
//  ImageTableViewController.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ImageTableViewController: UIViewController {
    
    var model: ImageTableModelInput!
    lazy var contentView: ImageTableViewInput = { return view as! ImageTableViewInput }()
    var dataSource: DataSource = DataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.onLoad = {
            self.model.load()
        }
        contentView.tableDataSource = { [unowned self] in return self.dataSource }
        contentView.prepareCellHeight = {table in
            table.rowHeight = UITableView.automaticDimension
            table.estimatedRowHeight = 250
        }
    }
}

// MARK: - ImageTableModelOutput
extension ImageTableViewController: ImageTableModelOutput {
    
    func modelDidLoad(_ dataSource: [String]) {
        self.dataSource.items = dataSource
        DispatchQueue.main.sync {
    self.contentView.prepare { [unowned self] (table) in
            table.dataSource = self.dataSource
            let nib = UINib(nibName: "ImageCell", bundle: nil)
            table.register(nib, forCellReuseIdentifier: "ImageCell")
            table.reloadData()
        }
    }
    }
    
    func modelDidFail(_ error: Error) {
        let alert = UIAlertController(title: "Error", message: "load error: \(error.localizedDescription)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion:{ print("here we must close app") })
    }
    
    
}

// MARK: - ImageTableViewControllerInput
extension ImageTableViewController: ImageTableViewControllerInput {}
