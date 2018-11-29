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
    func stopIndicator ()
}

final class FlightsView: UIView {
    
    @IBOutlet weak var table: UITableView!
    var tableDataSource: (() -> DataSource)?
    var onTableItemTap: ((FlightData) -> Void)?
    let spinner = UIActivityIndicatorView(style: .gray)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        spinner.style = .whiteLarge
        spinner.color = UIColor(ciColor: .blue)
        spinner.center = CGPoint(x: table.bounds.size.width/2, y: table.bounds.size.height/2)
        spinner.hidesWhenStopped = true
        spinner.startAnimating()
        table.backgroundView = spinner
    }
    
}

// MARK: - FlightsViewInput
extension FlightsView: FlightsViewInput {
    func prepare (_ registrate :((UITableView)->Void)){
        registrate(self.table)
    }
    
    func stopIndicator (){
        DispatchQueue.main.async {
                    self.spinner.stopAnimating()
        }
    }
    
}

extension FlightsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = tableDataSource?().items[indexPath.row]
        item.flatMap { onTableItemTap?($0) }
    }
}
