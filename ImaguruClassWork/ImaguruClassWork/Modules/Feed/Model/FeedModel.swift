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
    var dataSource: DataSource! = DataSource()
    func load(data: RegistrationData){
        dataSource.items.append(Article(title: "nickname", text: data.nickname))
        dataSource.items.append(Article(title: "email", text: data.email))
        dataSource.items.append(Article(title: "password", text: data.password))
    }
    
}
