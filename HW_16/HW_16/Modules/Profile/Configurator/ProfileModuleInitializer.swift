//  
//  ProfileModuleInitializer.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ProfileModuleInitializer: NSObject {

    @IBOutlet weak var viewController: ProfileViewController!

    override func awakeFromNib() {
        let configurator = ProfileModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }

}
