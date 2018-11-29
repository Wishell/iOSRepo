//
//  Results.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
}

enum APIClientError: Error {
    case noData
}
