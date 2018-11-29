//  
//  BrowserModel.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class BrowserModel: BrowserModelInput {
    
    weak var output: BrowserModelOutput!
    var repository: Repository!
    
    func load (_ type: DataStorageType) {
        repository.getSiteData(from: type) { (result) in
            switch result {
            case .success(let data):
                self.output.modelDidLoad(data)
            case .failure(let error):
                self.output.modelDidFail(error)
            }
        }
    }
    
}
