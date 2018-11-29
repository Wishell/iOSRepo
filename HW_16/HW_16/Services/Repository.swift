//
//  Repository.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class Repository {

    private let apiClient: APIClient!
    private let dataholder: DataHolder!
    
    
    init(apiClient: APIClient, dataholder: DataHolder) {
        self.apiClient = apiClient
        self.dataholder = dataholder
    }
    
    func postPhoto(_ post: Post, _ completion: @escaping ((Result<Data>) -> Void)) {
        guard let url = URL(string: Constants.API.urlPostAdress) else { return }
        do {
            let jsonData = try JSONEncoder().encode(post)
            let resource = Resource(url: url, body: jsonData)
            apiClient.submitPost(resource) { (result) in
                switch result {
                case .success(let data): completion(.success(data))
                case .failure: completion(.failure(APIClientError.noData))
                }
            }
        } catch {
            print(error)
        }
    }
    
    func getSiteData(from type: DataStorageType, _ completion: @escaping ((Result<Data>) -> Void)) {
        if let data = dataholder.load(type) {
            completion(.success(data))        } else {
            completion(.failure(APIClientError.noData))
        }
    }
    
    func saveData (_ data: Data) {
    dataholder.save(data)
    }
    
}
