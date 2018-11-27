//
//  Repository.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

enum RepositoryType {
    case local, remote
}

func async(queue: DispatchQueue = .main, _ block: @escaping () -> Void) {
    queue.async(execute: block)
}

final class Repository {
    
    private let apiClient: APIClient!
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func postPhoto(_ data: Data,_ completion: @escaping ((Result<[String]>) -> Void)){
        guard let url = URL(string: "https://vialyx.com") else {return}
 //       let resource = Resource(url: url)
        
    }
    
    func getImages(from type: RepositoryType, _ completion: @escaping ((Result<[String]>) -> Void)) {
        switch type {
        case.local:
            async {
                //completion(.success(self.database.get()))
            }
        case.remote:
            let resource = Resource(url: URL(string: "https://vialyx.com")!)
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let items = try JSONDecoder().decode([String].self, from: data)
                        async {
                            //self.database.save(adresses: items)
                            completion(.success(items))
                        }
                    } catch {
                        async { completion(.failure(error)) }
                    }
                case .failure:
                    self.getImages(from: .local, completion)
                    //                    async { completion(.failure(error)) }
                }
            }
        }
        
    }
    
}
