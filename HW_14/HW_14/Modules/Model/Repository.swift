//
//  ImageTableModelInput.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class Repository {

    private let apiClient: APIClient!

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func getImages(_ completion: @escaping ((Result<[String]>) -> Void)) {
        let resource = Resource(url: URL(string: "https://api.myjson.com/bins/b1mm6")!)
        apiClient.load(resource) { (result) in
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode([String].self, from: data)
                    completion(.success(items))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
