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
    var data: [AboutData] = []

    func load () {
        var item = AboutData()
        item.author = "Anton Vishneuski"
        item.contact = "wishell@mail.ru"
        item.version = 1.0
        item.image = "image"
        data = [item]

        output.modelDidLoad()
    }
}
