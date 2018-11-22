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
    
    override func prepareForReuse() {
        icon?.image = nil
        workItem?.cancel()
    }
    
}

extension ImageCell {
    
    func configure (_ adress: String) {
        spinner.start()
        workItem = Loader.default.load(adress) { [weak self] (image) in
            async {
                self?.icon.image = image
                self?.spinner.stop()
            }
        }
    }
    
}

class Loader {
    
    static let `default` = Loader()
    
    private let database: Database
    private let queue: DispatchQueue
    
    init(database: Database = Database(), queue: DispatchQueue = DispatchQueue(label: "download")) {
        self.database = database
        self.queue = queue
    }
    
    func load(_ image: String, completion: @escaping (UIImage?) -> Void) -> DispatchWorkItem {
        let workItem = DispatchWorkItem( block: { [weak self] in
            URL(string: image).flatMap({ url in
                guard let data = try? Data(contentsOf: url) else { return }
                self?.database.save(image: data, path: image)
                completion(UIImage(data: data))
            })
        })
        queue.async(execute: workItem)
        return workItem
    }
    
}
