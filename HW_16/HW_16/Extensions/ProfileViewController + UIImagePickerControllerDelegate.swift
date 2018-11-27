//
//  ProfileViewController + UIImagePickerControllerDelegate.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

extension ProfileViewController: UIImagePickerControllerDelegate {

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image: UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            contentView.setPicture(image)
        }
        dismiss(animated: true, completion: nil)
    }

}
