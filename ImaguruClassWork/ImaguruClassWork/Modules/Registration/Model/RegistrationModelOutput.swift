//  
//  RegistrationModelOutput.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol RegistrationModelOutput: class {
    func signUpDidSucces()
    func signUpDidFail(_ error: Error?)
}
