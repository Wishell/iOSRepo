//
//  MVCModuleModel.swift
//  Hw_first
//
//  Created by Wishell on 25.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class MVCModuleModel: MVCModuleModelInput {
    weak var output: MVCModuleModelOutput!
    
    func load(){
        output.modelDidLoad()
    }
}
