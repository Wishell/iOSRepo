//  
//  AboutModuleInitializer.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: AboutViewController!
    
    override func awakeFromNib() {
        let configurator = AboutModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
