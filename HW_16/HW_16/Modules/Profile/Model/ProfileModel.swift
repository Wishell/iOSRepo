//  
//  ProfileModel.swift
//  HW_16
//
//  Created by Wishell on 27.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation

final class ProfileModel: ProfileModelInput {

    weak var output: ProfileModelOutput!
    var repository: Repository!

    func load(_ data: Data) {
        let post = Post(userId: 789, id: 123, title: "image", body: data.base64EncodedString() )
        repository.postPhoto(post) { (result) in
            switch result {
            case .success:
                //output.modelDidLoad
                print("Success")

            case .failure(let error):
                self.output.modelDidFail(error: error)
                print("Failure")
            }
        }
    }
}
