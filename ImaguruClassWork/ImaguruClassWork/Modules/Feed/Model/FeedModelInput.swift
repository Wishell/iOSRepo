//  
//  FeedModelInput.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol FeedModelInput {
    var dataSource: DataSource! { get set }
    func load(data: RegistrationData)
}
