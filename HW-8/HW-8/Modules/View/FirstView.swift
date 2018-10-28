//  
//  FirstView.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol FirstViewInput: class {
    var isTextempty: Bool {get}
    var buttonAction: ((_ isEmtyTextFiel: Bool)->Void)? { get set }
}

final class FirstView: UIView {
    
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var FirstText: UITextField!
    @IBOutlet weak var FirstButton: UIButton!
    var buttonAction: ((_ isEmtyTextFiel: Bool)->Void)?
    
    @IBAction func ButtonPress(_ sender: Any) {
       buttonAction!(isTextempty)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}

// MARK: - FirstViewInput
extension FirstView: FirstViewInput {
    var isTextempty: Bool {return !FirstText.hasText}
}

