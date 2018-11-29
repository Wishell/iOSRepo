//
//  ImageTableModelInput.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
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

    private let database: Database!
    private let apiClient: APIClient!

    init(apiClient: APIClient, database: Database) {
        self.apiClient = apiClient
        self.database = database
    }

    func getImages(from type: RepositoryType, _ completion: @escaping ((Result<[String]>) -> Void)) {
        switch type {
        case.local:
            async {
                completion(.success(self.database.get()))
            }
        case.remote:
            let resource = Resource(url: URL(string: "https://api.myjson.com/bins/b1mm6")!)
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let items = try JSONDecoder().decode([String].self, from: data)
                        async {
                            self.database.save(adresses: items)
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
