//  
//  FlightsAboutView.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol FlightsAboutViewInput: class {
    var onGetFlightsTap:(()->Void)? {get set}
}

final class FlightsAboutView: UIView {

    @IBAction func GetFlights(_ sender: Any) {
        onGetFlightsTap?()
    }

    var onGetFlightsTap:(()->Void)?
}

// MARK: - FlightsAboutViewInput
extension FlightsAboutView: FlightsAboutViewInput {}
