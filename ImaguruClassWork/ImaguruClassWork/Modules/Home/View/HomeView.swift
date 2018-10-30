//  
//  HomeView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol HomeViewInput: class {
    func display(_ data: RegistrationData)
}

final class HomeView: UIView {
    
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var logOut: UIButton!
    @IBOutlet weak var back: UIButton!
    
    
}

// MARK: - HomeViewInput
extension HomeView: HomeViewInput {
    func display(_ data: RegistrationData) {
        nickname.text = data.nickname
        email.text = data.email
        password.text = data.password
    }
}
