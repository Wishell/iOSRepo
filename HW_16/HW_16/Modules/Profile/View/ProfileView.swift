//  
//  ProfileView.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ProfileViewInput: class {}

final class ProfileView: UIView {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBAction func getProfile(_ sender: Any) {
    }
}

// MARK: - ProfileViewInput
extension ProfileView: ProfileViewInput {}
