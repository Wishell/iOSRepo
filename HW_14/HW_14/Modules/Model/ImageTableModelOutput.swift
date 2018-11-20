//  
//  ImageTableModelOutput.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol ImageTableModelOutput: class {
    func modelDidLoad(_ data: ImageData)
    func modelDidFail(_ error: Error)
}
