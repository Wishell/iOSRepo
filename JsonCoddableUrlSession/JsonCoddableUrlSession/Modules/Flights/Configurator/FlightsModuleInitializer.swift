//  
//  FlightsModuleInitializer.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: FlightsViewController!
    
    override func awakeFromNib() {
        let configurator = FlightsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
