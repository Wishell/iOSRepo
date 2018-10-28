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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.load()
    }
}

// MARK: - SecondModelOutput
extension SecondViewController: SecondModelOutput {
    func modelDidFail(_ error: Error?) {
        UIAlertController.show(self, error: error)
    }
    
    func modelDidLoad(_ image: UIImage?) {
        contentView.setImage(image: image!)
    }
}

// MARK: - SecondViewControllerInput
extension SecondViewController: SecondViewControllerInput {}
