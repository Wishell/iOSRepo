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
    @objc dynamic var adress: String = ""
    override static func primaryKey() -> String? {
        return "adress"
    }
    
}

final class Database {
    
    func save(adresses: [String]) {
        let realm = try! Realm()
        
        try! realm.write {
            adresses.compactMap{
                let object = Picture()
                object.adress = $0
//                realm.deleteAll()
realm.add(object, update: true)
            }
        }
    }
    
    func get() -> [String] {
        let realm = try! Realm()
        return realm.objects(Picture.self).map{ object in return object.adress }
    }
    
}
