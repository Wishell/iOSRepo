//
//  UIAlertController+ErrorDescription.swift
//  HW-8
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

extension UIAlertController {

    static func show(_ viewController: UIViewController, error: Error?) {
        let alertController = UIAlertController(title: "PEACEDEATH", message: error?.localizedDescription, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        viewController.present(alertController, animated: true, completion: nil)
    }

}
