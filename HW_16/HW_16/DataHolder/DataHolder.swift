//
//  DataHolder.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class DataHolder {
    
    var database: DataBase!

    
    init (database: DataBase){
        self.database = database
    }
    
    
    func save(_ data: Data){
        database.save(data: data)
        Defaults.setData(for: Constants.Defaults.siteName, data: data)
    }
    
    func load(_ type: DataStorageType) -> Data? {
        switch type {
        case .realmStorage:
            return database.get()
        case .userDefaultStorage:
            return Defaults.getData(for: Constants.Defaults.siteName)
        }
    }
    
}
