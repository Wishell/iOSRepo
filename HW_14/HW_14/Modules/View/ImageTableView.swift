//  
//  ImageTableView.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ImageTableViewInput: class {
    var onLoad:(() -> Void)? {get set}
    func prepare (_ registrate: ((UITableView) -> Void))
    var dataSource: DataSource? { get set }
    func startSpinner ()
    func stopISpinner ()
}

final class ImageTableView: UIView {

    @IBOutlet weak var spinner: SpinnerView!
    @IBOutlet weak var table: UITableView!
    @IBAction func OnLoadTap(_ sender: Any) {
        onLoad?()
    }

     var onLoad:(() -> Void)?
    var dataSource: DataSource?

    override func awakeFromNib() {
        super.awakeFromNib()
        spinner.stop()
    }

}

// MARK: - ImageTableViewInput
extension ImageTableView: ImageTableViewInput {

    func prepare (_ registrate: ((UITableView) -> Void)) {
        registrate(table)
    }

    func startSpinner() {
        spinner.start()
    }

    func stopISpinner() {
        spinner.stop()
    }

}
