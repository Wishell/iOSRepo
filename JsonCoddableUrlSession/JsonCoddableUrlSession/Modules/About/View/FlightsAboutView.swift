//  
//  FlightsAboutView.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol FlightsAboutViewInput: class {
    var onButtonTap:(()->Void)? {get set}
}

final class FlightsAboutView: UIView {
    @IBOutlet weak var button: UIButton!
    
    @IBAction func OnButtonTouch(_ sender: Any) {
        onButtonTap?()
    }
    
    var onButtonTap:(()->Void)?
}

// MARK: - FlightsAboutViewInput
extension FlightsAboutView: FlightsAboutViewInput {}
