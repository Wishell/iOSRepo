//  
//  AboutModelInput.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol AboutModelInput {
    var dataSource: AboutDataSource? {get set}
    func load()
}
