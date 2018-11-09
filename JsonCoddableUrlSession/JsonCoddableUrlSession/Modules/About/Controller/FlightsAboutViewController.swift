//  
//  FlightsAboutViewController.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsAboutViewController: UIViewController {
    
    var model: FlightsAboutModelInput!
    lazy var contentView: FlightsAboutViewInput = { return view as! FlightsAboutViewInput }()
    
}

// MARK: - FlightsAboutModelOutput
extension FlightsAboutViewController: FlightsAboutModelOutput {}

// MARK: - FlightsAboutViewControllerInput
extension FlightsAboutViewController: FlightsAboutViewControllerInput {}
