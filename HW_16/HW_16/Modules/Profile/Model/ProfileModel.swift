//  
//  ProfileModel.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class ProfileModel: ProfileModelInput {

    weak var output: ProfileModelOutput!
    var repository: Repository!
    
    func load(_ data: Data) {
        
    }
}
