//  
//  DetailsView.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol DetailsViewInput: class {
    func display(_ data: FlightData)
}

final class DetailsView: UIView {
    
    @IBOutlet weak var localView: DetailsViewCell!
    
    
    
}

// MARK: - DetailsViewInput
extension DetailsView: DetailsViewInput {
    func display(_ data: FlightData){
        localView.display(data)
    }
}
