//  
//  AboutModel.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class AboutModel: AboutModelInput {
    
    weak var output: AboutModelOutput!
    var dataSource: AboutDataSource? = AboutDataSource()
    func load () {
        dataSource?.item.author = "Anton Vishneuski"
        dataSource?.item.contact = "wishell@mail.ru"
        dataSource?.item.version = 1.0
        dataSource?.item.image = "image"
        
    }
}
