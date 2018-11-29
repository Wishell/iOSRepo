//  
//  BrowserModuleInitializer.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class BrowserModuleInitializer: NSObject {

    @IBOutlet weak var viewController: BrowserViewController!

    override func awakeFromNib() {
        let configurator = BrowserModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }

}
