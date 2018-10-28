//
//  FirstViewController.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit
enum FirstViewAPPError: Error {
    case noEmptyTextField
}

extension FirstViewAPPError: LocalizedError {
    
    var localizedDescription: String {
        switch self {
        case .noEmptyTextField:
            return "Text Field not empty"
        }
    }
}

final class FirstViewController: UIViewController {

    var model: FirstModelInput!
    lazy var contentView: FirstViewInput = { return view as! FirstViewInput }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addGestureToHideKeyboard()

        contentView.buttonAction = { [unowned self] in
            if let text = self.model.text, !text.isEmpty {
                UIAlertController.show(self, error: FirstViewAPPError.noEmptyTextField)
            } else {
                self.performSegue(withIdentifier: "showSecond", sender: nil)
            }
        }
        contentView.hideKeyboard = { [unowned self] in self.view.endEditing(true) }
        contentView.textFromField = { [unowned self] (text) in
            self.model.text = text
        }

    }

    @IBAction func unwind(segue: UIStoryboardSegue) {
        contentView.setLabelText(text: "Unwind from second View")
    }

}

// MARK: - FirstModelOutput
extension FirstViewController: FirstModelOutput { }

// MARK: - FirstViewControllerInput
extension FirstViewController: FirstViewControllerInput { }
