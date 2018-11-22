//
//  DataBase.swift
//  HW_14
//
//  Created by Wishell on 21.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import RealmSwift

class Picture: Object {
    @objc dynamic var adresses: String = ""
}

final class Database {
    
    let realm: Realm
    
    init(realm: Realm = try! Realm()) {
        self.realm = realm
    }
    
    func save(adresses: [String]) {
        let objects: [Picture] = adresses.map {
            let object = Picture()
            object.adresses = $0
            return object
        }
        try! realm.write {
            realm.deleteAll()
            realm.add(objects)
        }
    }
    
    func get() -> [String] {
        return realm.objects(Picture.self).map { object in return object.adresses }
    }
    
}
