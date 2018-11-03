//  
//  HomeModel.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class HomeModel: HomeModelInput {
    var data: RegistrationData = RegistrationData()
    weak var output: HomeModelOutput!
    
    func logOut(){
        data = RegistrationData()
        output.modelDidLogOut()
    }
    
    func back() {
        output.modelDidBack()
    }
    
}
