//  
//  ImageTableModel.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class ImageTableModel: ImageTableModelInput {
    
    weak var output: ImageTableModelOutput!
    var repository: Repository = Repository(apiClient: APIClient())
    
    func load(){
        
        repository.getImages { (result) in
            switch result {
            case .success(let images):
                print("OK")
            case .failure(_):
                print("Fail")
            }
            
        }
    }
}
