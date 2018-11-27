//  
//  ProfileView.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ProfileViewInput: class {

    func hideButton()
    var getPicture: (() -> Void)? {get set}
    func setPicture(_ picture: UIImage)
}

final class ProfileView: UIView {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var avatar: UIImageView!
    @IBAction func getAvatar(_ sender: Any) {
        getPicture?()
    }
    var getPicture: (() -> Void)?
}

// MARK: - ProfileViewInput
extension ProfileView: ProfileViewInput {

    func hideButton() {
        button.isHidden = true
    }
    func setPicture(_ picture: UIImage) {
        avatar.image = picture
        hideButton()
    }

}
