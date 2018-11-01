//
//  UserSefaultsEnum.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

enum UserDefaultsEnum : String{
    case nickname
    case email
    case password
    
    var value : String {
        switch self{
        case .nickname:
            return "Nickname"
        case .email:
            return "Email"
        case .password:
            return "Password"
        }
    }
}
