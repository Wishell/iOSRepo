//  
//  DetailsViewController.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    var model: DetailsModelInput!
    lazy var contentView: DetailsViewInput = { return view as! DetailsViewInput }()
    
}

// MARK: - DetailsModelOutput
extension DetailsViewController: DetailsModelOutput {}

// MARK: - DetailsViewControllerInput
extension DetailsViewController: DetailsViewControllerInput {}
