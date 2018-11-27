//  
//  ProfileViewController.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {

    var model: ProfileModelInput!
    lazy var contentView: ProfileViewInput = { return view as! ProfileViewInput }()
    var picker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.getPicture = {[weak self] in
            let actionSheet = UIAlertController(title: "Choose source", message: nil, preferredStyle: .actionSheet)
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                actionSheet.addAction(UIAlertAction(title: "Camera", style: .destructive, handler: { (_) in
                    self?.showPicker(.camera)
                }))
            }
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (_) in
                    self?.showPicker(.photoLibrary)
                }))
            }
            actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self?.present(actionSheet, animated: true, completion: nil)
        }

    }

    func showPicker(_ type: UIImagePickerController.SourceType) {
        picker.delegate = self
        picker.sourceType = type
        present(picker, animated: true, completion: nil)
    }

}

// MARK: - ProfileModelOutput
extension ProfileViewController: ProfileModelOutput {}

// MARK: - ProfileViewControllerInput
extension ProfileViewController: ProfileViewControllerInput {}