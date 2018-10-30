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
    var action: (()->Void)? {get set}
}

final class HomeView: UIView {
    
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var logOut: UIButton!
    @IBOutlet weak var back: UIButton!
    
    var action: (()->Void)?
    
    @IBAction func LogOut(_ sender: Any) {
        action?()
    }
}

// MARK: - HomeViewInput
extension HomeView: HomeViewInput {
    func display(_ data: RegistrationData) {
        nickname.text = data.nickname
        email.text = data.email
        password.text = data.password
    }
}
