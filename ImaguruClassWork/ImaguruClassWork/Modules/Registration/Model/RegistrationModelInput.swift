//  
//  RegistrationModelInput.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol RegistrationModelInput {
    var data: RegistrationData {get set}
    func setFromDefaults() 
    func signUp ()
}
