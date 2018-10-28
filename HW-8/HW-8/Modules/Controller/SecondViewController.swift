//  
//  SecondViewController.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    var model: SecondModelInput!
    lazy var contentView: SecondViewInput = { return view as! SecondViewInput }()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! FirstViewController
        controller.contentView.setLabelText(text: "Unwind from second View")
    }
}

// MARK: - SecondModelOutput
extension SecondViewController: SecondModelOutput {}

// MARK: - SecondViewControllerInput
extension SecondViewController: SecondViewControllerInput {}
