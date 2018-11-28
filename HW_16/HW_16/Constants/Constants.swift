//
//  Constants.swift
//  HW_16
//
//  Created by Wishell on 28.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

struct Constants {
    
    struct API {
        static let urlPostAdress: String = "https://jsonplaceholder.typicode.com/posts"
        static let headerKey: String = "Content-Type"
        static let headerValue: String = "application/json"
        private init () {}
    }
    
    struct Defaults {
    static let siteName = "https://vialyx.com"
    }
    
    private init() {}
}
