//
//  DataSource.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ImageCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var spinner: SpinnerView!
    
    private var workItem: DispatchWorkItem?
    private let queue = DispatchQueue(label: "download")
    private var data: Data?
    
    override func prepareForReuse() {
        icon?.image = nil
        workItem?.cancel()
    }
    
}

extension ImageCell {
    
    func configure (_ adress: String) {
        spinner.start()
        workItem = DispatchWorkItem( block: { [weak self] in
            URL(string: adress).flatMap({ url in
                guard let data = try? Data(contentsOf: url) else { return }
                DispatchQueue.main.async {
                    self?.icon.image = UIImage(data: data)
                    self?.spinner.stop()
                }
            })
        })
        workItem.flatMap { queue.async(execute: $0) }
    }
    
}
