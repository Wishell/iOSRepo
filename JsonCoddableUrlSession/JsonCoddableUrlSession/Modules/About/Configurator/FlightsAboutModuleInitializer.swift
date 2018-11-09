//  
//  FlightsAboutModuleInitializer.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsAboutModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: FlightsAboutViewController!
    
    override func awakeFromNib() {
        let configurator = FlightsAboutModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
