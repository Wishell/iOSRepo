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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.onButtonTap = {
     //       self.navigationController?.pushViewController(FlightsViewController.self, animated: true)
        }
    }
}

// MARK: - FlightsAboutModelOutput
extension FlightsAboutViewController: FlightsAboutModelOutput {}

// MARK: - FlightsAboutViewControllerInput
extension FlightsAboutViewController: FlightsAboutViewControllerInput {}
