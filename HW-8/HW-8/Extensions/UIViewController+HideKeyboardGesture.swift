//
//  UIViewController+HideKeyboardGesture.swift
//  HW-8
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

extension UIViewController {
    func addGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
}
