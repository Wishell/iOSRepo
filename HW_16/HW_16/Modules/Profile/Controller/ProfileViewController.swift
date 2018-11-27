//  
//  ProfileViewController.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    var model: ProfileModelInput!
    lazy var contentView: ProfileViewInput = { return view as! ProfileViewInput }()
    
}

// MARK: - ProfileModelOutput
extension ProfileViewController: ProfileModelOutput {}

// MARK: - ProfileViewControllerInput
extension ProfileViewController: ProfileViewControllerInput {}
