//  
//  RegistrationView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol RegistrationViewInput: class {
    func configure(available: Bool)
    var textChange: ((String, Int)->Void)? {get set}
    var action: (()->Void)? {get set}
    func display(_ data: RegistrationData)
}

final class RegistrationView: UIView {
    
    
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUp: UIButton!
    
    var textChange: ((String, Int)->Void)?
    var action: (()->Void)?
    
    // MARK: - Actions
    @IBAction func signUpDidTap(_ sender: Any) {
        action?()
    }
    
}

// MARK: - RegistrationViewInput
extension RegistrationView: RegistrationViewInput {
    func configure(available: Bool) {
        signUp.isEnabled = available
    }
    
    func display(_ data: RegistrationData){
        nickname.text = data.nickname
        email.text = data.email
        password.text = data.password
    }
    
}

extension RegistrationView : UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
//        textChange?(textField.text ?? "", textField.tag)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textChange?(textField.text ?? "", textField.tag) // here we must change logic to set all characters
        return true
    }
}
