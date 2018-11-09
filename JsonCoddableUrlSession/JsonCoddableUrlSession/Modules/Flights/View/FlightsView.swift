//  
//  FlightsView.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol FlightsViewInput: class {
    func prepare (_ registrate :((UITableView)->Void))
    var tableDataSource: (() -> DataSource)? { get set }
    var onTableItemTap: ((FlightData) -> Void)? { get set }
}

final class FlightsView: UIView {
    
    @IBOutlet weak var table: UITableView!
    var tableDataSource: (() -> DataSource)?
    var onTableItemTap: ((FlightData) -> Void)?
}

// MARK: - FlightsViewInput
extension FlightsView: FlightsViewInput {
    func prepare (_ registrate :((UITableView)->Void)){
        registrate(self.table)
    }
    
}

extension FlightsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = tableDataSource?().items[indexPath.row]
        item.flatMap { onTableItemTap?($0) }
    }
}
