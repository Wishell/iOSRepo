//  
//  ProfileModuleConfigurator.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ProfileModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? ProfileViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ProfileViewController) {
        let model = ProfileModel()
        model.output = viewController
        let dataholder = DataHolder(database: DataBase())
        model.repository = Repository(apiClient: APIClient(), dataholder: dataholder)
        viewController.picker = UIImagePickerController()
        viewController.model = model
    }

}
