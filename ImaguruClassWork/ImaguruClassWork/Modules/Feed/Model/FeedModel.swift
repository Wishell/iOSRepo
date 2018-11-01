//  
//  FeedModel.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class FeedModel: FeedModelInput {
    
    weak var output: FeedModelOutput!
    
    func load(){
        print ("model loaded")
    }
    
}
