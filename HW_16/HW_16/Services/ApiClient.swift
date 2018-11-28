//
//  ApiClient.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class APIClient {
    
    func submitPost (_ resource: Resource, result: @escaping ((Result<Data>) -> Void)){
     let request = URLRequest(resource)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error  == nil else {
                error.flatMap{result(.failure($0))}
                return
            }
            print((response.flatMap{$0 as? HTTPURLResponse}?.statusCode) ?? "nil")
            data.flatMap{result(.success($0))}
        }
        task.resume()
    }
}
