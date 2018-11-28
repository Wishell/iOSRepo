//
//  URLRequest+Resource.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

extension URLRequest {
    
    init(_ resource: Resource) {
        self.init(url: resource.url)
        self.httpMethod = resource.method
        self.httpBody = resource.body
        updateHeader(key: Constants.API.headerKey, value: Constants.API.mimeJson)
    }

    private mutating func updateHeader(key: String, value: String) {
        var headers = self.allHTTPHeaderFields ?? [:]
        headers[key] = value
        self.allHTTPHeaderFields = headers
    }
    
}
