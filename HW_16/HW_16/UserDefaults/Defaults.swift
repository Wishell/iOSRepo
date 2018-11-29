//
//  Defaults.swift
//  HW_16
//
//  Created by Wishell on 28.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

struct Defaults {

    static func setData(for key: String, data: Data) {
        UserDefaults.standard.set(data, forKey: key)
    }

    static func getData(for key: String) -> Data? {
        return UserDefaults.standard.data(forKey: key) ?? Data(base64Encoded: "")
    }

    private init() {}
}
