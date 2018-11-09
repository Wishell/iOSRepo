//  
//  FlightsModelOutput.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

protocol FlightsModelOutput: class {
    func modelDidSucces(_ data: [FlightData])
    func modelDidFail(error: Error)
}
