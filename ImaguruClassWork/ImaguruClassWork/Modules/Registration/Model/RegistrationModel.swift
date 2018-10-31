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
    case shortNickname(Int)
    case incorrectEmail
}

extension RegistrationError: LocalizedError{
    var errorDescription: String?{
        switch self {
        case .shortPassword(let count):
            return "Paswort must have at least \(count) symbols"
        case .shortNickname(let count):
        return "Nickname must have at least \(count) symbols"
        case .incorrectEmail:
            return "Email is incorrect"
        }
    }
}

final class RegistrationModel: RegistrationModelInput {
    weak var output: RegistrationModelOutput!
    var data: RegistrationData = RegistrationData()
    private let minNicknameLength = 3
    private let minPasswordLength = 6
    
    func signUp() {
        guard data.password.count >= minPasswordLength else {
            output.signUpDidFail(RegistrationError.shortPassword(minPasswordLength))
            return
        }
        guard data.nickname.count >= minNicknameLength else {
            output.signUpDidFail(RegistrationError.shortNickname(minNicknameLength))
            return
        }
        guard EmailValidator.isEmailValid(data.email) else {
            output.signUpDidFail(RegistrationError.incorrectEmail)
            return
        }
        
        //Cell API
        output.signUpDidSucces()
    }
    
}
