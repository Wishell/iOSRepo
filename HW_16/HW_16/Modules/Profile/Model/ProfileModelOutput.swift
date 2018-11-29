//  
//  ProfileModelOutput.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

protocol ProfileModelOutput: class {
    func modelDidFail(error: Error?)
    func modelDidLoad()

}
