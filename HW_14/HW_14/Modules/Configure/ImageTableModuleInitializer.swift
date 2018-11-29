//  
//  ImageTableModuleInitializer.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ImageTableModuleInitializer: NSObject {

    @IBOutlet weak var viewController: ImageTableViewController!

    override func awakeFromNib() {
        let configurator = ImageTableModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }

}
