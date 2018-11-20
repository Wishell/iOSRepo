//
//  Repository.swift
//  JsonCoddableUrlSession
//
//  Created by Maksim Vialykh on 08/11/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import Foundation

// TODO: - Move to the separated file FlightData.swift
struct ImageData {
    var ImagePath: [String] = []
}

extension ImageData: Codable {
    
    init(from decoder: Decoder) throws {
        if var values = try? decoder.unkeyedContainer(){
            while values.isAtEnd == false {
                if let value = try? values.decode(String.self) {
                    ImagePath.append(value)
            }
        }
    }
}
    
}

final class Repository {
    
    private let apiClient: APIClient!
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func getImages(_ completion: @escaping ((Result<ImageData>) -> Void)) {
        let resource = Resource(url: URL(string: "https://api.myjson.com/bins/b1mm6")!)
        apiClient.load(resource) { (result) in
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode(ImageData.self, from: data)
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
