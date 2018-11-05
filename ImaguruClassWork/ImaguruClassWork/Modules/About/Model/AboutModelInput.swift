//  
//  AboutModelInput.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol AboutModelInput {
    var data: [AboutData] { get set }
    func load()
}
