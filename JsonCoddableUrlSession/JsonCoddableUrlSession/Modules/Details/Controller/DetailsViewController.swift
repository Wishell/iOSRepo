//  
//  DetailsViewController.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    var model: DetailsModelInput!
    lazy var contentView: DetailsViewInput = { return view as! DetailsViewInput }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.display(model.data)
    }
    
    
}

// MARK: - DetailsModelOutput
extension DetailsViewController: DetailsModelOutput {}

// MARK: - DetailsViewControllerInput
extension DetailsViewController: DetailsViewControllerInput {
    func set (_ data: FlightData){
        //guard let `data` = data else {return}
        //model.data = try! JSONDecoder().decode(FlightData.self, from: data)
        model.data = data
    }
}
