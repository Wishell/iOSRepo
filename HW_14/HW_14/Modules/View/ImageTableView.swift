//  
//  ImageTableView.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ImageTableViewInput: class {
    var onLoad:(()->Void)? {get set}
    func prepare (_ registrate :((UITableView)->Void))
    var tableDataSource: (() -> DataSource)? { get set }
    var prepareCellHeight: ((UITableView)->Void)? {get set}
}

final class ImageTableView: UIView {
    
    @IBOutlet weak var table: UITableView!
    @IBAction func OnLoadTap(_ sender: Any) {
        onLoad?()
    }
    
     var onLoad:(()->Void)?
    var tableDataSource: (() -> DataSource)?
    var prepareCellHeight: ((UITableView)->Void)?
}

// MARK: - ImageTableViewInput
extension ImageTableView: ImageTableViewInput {
    
    func prepare (_ registrate :((UITableView)->Void)){
        prepareCellHeight?(table)
        registrate(table)
        
    }
    
}
