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
    var data: [Article] = []
    
    func load(data: RegistrationData) {
        self.data.append(Article(title: "nickname", text: data.nickname))
        self.data.append(Article(title: "email", text: data.email))
        self.data.append(Article(title: "password", text: data.password))
        output.modelDidLoad()
    }

}
