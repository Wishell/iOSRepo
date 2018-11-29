//  
//  BrowserModelOutput.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//
import Foundation

protocol BrowserModelOutput: class {

    func modelDidLoad(_ data: Data)
    func modelDidFail(_ error: Error?)

}
