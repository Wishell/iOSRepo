//  
//  FeedModuleInitializer.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FeedModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: FeedViewController!
    
    override func awakeFromNib() {
        let configurator = FeedModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
