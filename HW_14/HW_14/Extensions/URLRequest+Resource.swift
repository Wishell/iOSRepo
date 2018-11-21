//
//  URLRequest+Resource.swift
//  HW_14
//
//  Created by Wishell on 21.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

extension URLRequest {
    
    init(_ resource: Resource) {
        self.init(url: resource.url)
        self.httpMethod = resource.method
    }
    
}
