//  
//  HomeViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    var model: HomeModelInput!
    lazy var contentView: HomeViewInput = { return view as! HomeViewInput }()
    
}

// MARK: - HomeModelOutput
extension HomeViewController: HomeModelOutput {}

// MARK: - HomeViewControllerInput
extension HomeViewController: HomeViewControllerInput {}
