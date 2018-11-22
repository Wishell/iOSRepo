//
//  DataBaseMigrator.swift
//  HW_14
//
//  Created by Wishell on 22.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import RealmSwift

final class DataBaseMigrator {

    func migrate(to version: Int) {
        let config = Realm.Configuration(
            schemaVersion: UInt64(version),
            migrationBlock: { _, oldSchemaVersion in
                if (oldSchemaVersion < version) { }
        })

        Realm.Configuration.defaultConfiguration = config
    }

}
