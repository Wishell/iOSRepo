//  
//  FlightsViewController.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsViewController: UIViewController {
    
    var model: FlightsModelInput!
    lazy var contentView: FlightsViewInput = { return view as! FlightsViewInput }()
    
}

// MARK: - FlightsModelOutput
extension FlightsViewController: FlightsModelOutput {}

// MARK: - FlightsViewControllerInput
extension FlightsViewController: FlightsViewControllerInput {}
