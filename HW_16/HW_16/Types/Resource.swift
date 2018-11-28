//
//  Resource.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

struct Resource {
    let url: URL
    let method: String = "POST"
    let body: Data

}

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
