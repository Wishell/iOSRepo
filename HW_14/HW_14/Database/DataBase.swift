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
    @objc dynamic var data: Data?

    override static func primaryKey() -> String? {
        return "adresses"
    }
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
            objects.forEach {
                realm.add($0, update: true)
            }
        }
    }

    func save(image: Data, path: String) {
        DispatchQueue.main.async {
            self.realm.objects(Picture.self).filter("adresses = '\(path)'").first.flatMap {[weak self] picture in
                try! self?.realm.write {
                    picture.data = image
                    self?.realm.add(picture, update: true)
                }
            }
        }
    }

    func get() -> [String] {
        return realm.objects(Picture.self).compactMap { $0.adresses }
    }

    func getData(from image: String) -> Data {
        return realm.objects(Picture.self).filter("adresses = '\(image)'").first.flatMap { return $0.data }!
    }

}
