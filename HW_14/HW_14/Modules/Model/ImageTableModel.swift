//  
//  ImageTableModel.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class ImageTableModel: ImageTableModelInput {

    weak var output: ImageTableModelOutput!
    var repository: Repository!

    func load() {

        repository.getImages(from: .remote) { (result) in
            switch result {
            case .success(let images):
                self.output.modelDidLoad(images)
            case .failure(let error):
                self.output.modelDidFail(error)
            }

        }
    }
}
