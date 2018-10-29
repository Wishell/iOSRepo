//  
//  RegistrationModel.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

enum RegistrationError : Error{
    case shortPassword(Int)
}

extension RegistrationError: LocalizedError{
    var errorDescription: String?{
        switch self {
        case .shortPassword(let count):
            return "Paswort must have at least \(count) symbols"
        }
    }
}

final class RegistrationModel: RegistrationModelInput {
    weak var output: RegistrationModelOutput!
    var data: RegistrationData = RegistrationData()
    private let minPasswordLength = 6
    func signUp() {
        guard data.password.count >= 6 else {
            output.signUpDidFail(RegistrationError.shortPassword(minPasswordLength))
            return
        }
        //Cell API
        output.signUpDidSucces()
    }
}
