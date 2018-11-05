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

extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
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
        rotate()
    }
    
    func rotate(){
//        UIView.animate(withDuration: 2.5, animations: { [weak self] in
//            self?.nickname.transform = CGAffineTransform(rotationAngle: CGFloat(350).degreesToRadians )
//        }) { (succsses) in
//            self.nickname.transform = .identity
//            print("Animation Complete")
//        }
        
        UIView.animateKeyframes(withDuration: 0.3, delay: 1.0, options: [.autoreverse], animations: {
//            [weak self] in
//            self?.nickname.transform = CGAffineTransform(rotationAngle: CGFloat(180).degreesToRadians )
//            .scaledBy(x: 2.0, y: 2.0)
//            .translatedBy(x: 0, y: 400)
//            .inverted()
//            self?.nickname.alpha = 0.0
            self.nickname.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (succsses) in
            self.nickname.alpha = 1.0
            self.nickname.transform = .identity
            print("Animation Complete")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("frame \(frame)")
        print("nickname frame \(nickname.frame)")
        print("nickname center \(nickname.center)")
        print("nickname size \(nickname.frame.size)")
        print("center \(center)")
        print("frame size \(frame.size)")
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
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else {
            textChange?("", textField.tag)
            return false}
        let textRange = Range(range, in: text)
        let updateText = text.replacingCharacters(in: textRange!, with: string)
        textChange?(updateText, textField.tag)
        return true
    }
}
