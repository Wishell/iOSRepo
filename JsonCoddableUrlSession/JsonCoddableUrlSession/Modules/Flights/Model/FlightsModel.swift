//  
//  FlightsModel.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import Foundation

final class FlightsModel: FlightsModelInput {
    
    weak var output: FlightsModelOutput!
    let repository = Repository(apiClient: APIClient())
    
    func load(){
        repository.getFlights { (result) in
            switch result {
            case .success(let items):
                self.output.modelDidSucces(items)
                print("\(self) retrive flights: \(items)")
            case .failure(let error):
                self.output.modelDidFail()
                print("\(self) retrive error on get flights: \(error)")
            }
        }
    }
}
