//  
//  FlightsViewController.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsViewController: UIViewController {
    
    var model: FlightsModelInput!
    lazy var contentView: FlightsViewInput = { return view as! FlightsViewInput }()
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.load()
        contentView.tableDataSource = {[unowned self] in return self.dataSource}
        //let VC = DetailsViewController()
        //navigationController?.pushViewController(VC, animated: true)

    }
}

// MARK: - FlightsModelOutput
extension FlightsViewController: FlightsModelOutput {
    func modelDidSucces(_ data: [FlightData]){
        contentView.stopIndicator()
        dataSource.items = data
        DispatchQueue.main.sync {
            self.contentView.prepare { (table) in
                table.delegate = self.contentView.self as? UITableViewDelegate
                table.dataSource = self.dataSource
                table.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
                table.reloadData()
            }
        }
        
        
    }
    
    func modelDidFail(error: Error){}
}

// MARK: - FlightsViewControllerInput
extension FlightsViewController: FlightsViewControllerInput {}
