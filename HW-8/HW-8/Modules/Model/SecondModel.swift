//  
//  SecondModel.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import UIKit

enum SecondModelError: Error {
    case imgLoadError(String)
}
extension SecondModelError: LocalizedError {
    
    var localizedDescription: String {
        switch self {
        case .imgLoadError(let name):
            return "Resource \(name) file not exist"
        }
    }
    
}


final class SecondModel: SecondModelInput {
    
    weak var output: SecondModelOutput!
    var image: UIImage?
    func load(){
        let fileName = "whatsup"
        guard let path = Bundle.main.path(forResource: fileName, ofType: "jpg") else {
            self.output.modelDidFail(SecondModelError.imgLoadError(fileName))
            return
        }
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            self.output.modelDidLoad(UIImage(data: data))
        } catch {
            self.output.modelDidFail(error)
        }
        
    }
}
