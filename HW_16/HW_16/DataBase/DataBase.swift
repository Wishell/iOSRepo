//
//  DataBase.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import RealmSwift

class Site: Object {
    @objc dynamic var data: Data?
}


final class DataBase {
    
    let realm: Realm
    
    init (realm: Realm = try! Realm()) {
        self.realm = realm
    }
    
    func save(data: Data) {
        let object = Site()
        object.data = data
        try! realm.write {
            realm.add(object)
        }
        
    }
    
    func get() -> Data {
        return realm.objects(Site.self).compactMap{$0.data}.first!
    }
    
    
}
