//
//  FirstView.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol FirstViewInput: class {
    var hideKeyboard: (() -> Void)! { get set }
    var textFromField: ((_ text: String?) -> Void)? { get set }
    var buttonAction: (() -> Void)! { get set }
    func setLabelText (text: String)
}

final class FirstView: UIView {

    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var FirstText: UITextField!
    @IBOutlet weak var FirstButton: UIButton!

    var hideKeyboard: (() -> Void)!
    var buttonAction: (() -> Void)!
    var textFromField: ((_ text: String?) -> Void)?


    @IBAction func ButtonPress(_ sender: Any) {
        buttonAction()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        FirstText.delegate = self
    }

}

// MARK: - FirstViewInput
extension FirstView: FirstViewInput {
    func setLabelText(text: String) {
        FirstLabel.text = text
    }
}

// MARK: - UITextFieldDelegate
extension FirstView: UITextFieldDelegate {

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFromField!(FirstText.text)
        hideKeyboard()
        return true
    }
}


