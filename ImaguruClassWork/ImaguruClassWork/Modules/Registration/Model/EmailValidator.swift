//
//  EmailValidator.swift
//  ImaguruClassWork
//
//  Created by Wishell on 31.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
let EMAIL_REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
class EmailValidator {

    static func isEmailValid(_ email: String) -> Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", EMAIL_REGEX)
        return emailTest.evaluate(with: email)
    }
}
