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
        contentView.onGetFlightsTap = {
            //self.navigationController?.pushViewController(FlightsViewController(), animated: true)
            self.performSegue(withIdentifier: "seg", sender: FlightsAboutViewInput.self)
        }
    }
}

// MARK: - FlightsAboutModelOutput
extension FlightsAboutViewController: FlightsAboutModelOutput {
}

// MARK: - FlightsAboutViewControllerInput
extension FlightsAboutViewController: FlightsAboutViewControllerInput {}
