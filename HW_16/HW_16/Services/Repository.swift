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

    init(apiClient: APIClient) {
        self.apiClient = apiClient
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

}
