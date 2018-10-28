//  
//  SecondModelOutput.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//
import UIKit
protocol SecondModelOutput: class {
    func modelDidLoad(_ image: UIImage?)
    func modelDidFail(_ error: Error?)
}
