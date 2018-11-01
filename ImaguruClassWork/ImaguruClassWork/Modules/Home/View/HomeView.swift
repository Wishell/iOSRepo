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
    var logOutAction: (()->Void)? {get set}
    var backAction: (()->Void)? {get set}
    var closeAction: (()->Void)? {get set}
}

final class HomeView: UIView {
    
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var logOut: UIButton!
    @IBOutlet weak var back: UIButton!
    
    var logOutAction: (()->Void)?
    var backAction: (()->Void)?
    var closeAction: (()->Void)?
    @IBAction func LogOut(_ sender: Any) {
        logOutAction?()
    }
    @IBAction func Back(_ sender: Any) {
        backAction?()
    }
    @IBAction func stopAction(_ sender: Any) {
        closeAction?()
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
