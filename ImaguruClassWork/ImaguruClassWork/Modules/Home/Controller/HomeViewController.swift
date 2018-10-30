//  
//  HomeViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    var model: HomeModelInput!
    lazy var contentView: HomeViewInput = { return view as! HomeViewInput }()

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.display(model.data)
        contentView.action = {
            let alert = UIAlertController(title: "Ahtung", message: "Really? You want to log out???", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Log Out", style: .destructive, handler: { [unowned self] (alert: UIAlertAction)in
                self.model.logOut()
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }

}

// MARK: - HomeModelOutput
extension HomeViewController: HomeModelOutput {
    func modelDidLogOut() {
     //   performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }
}

// MARK: - HomeViewControllerInput
extension HomeViewController: HomeViewControllerInput {
    func set (_ data: RegistrationData){
        model.data = data
    }
}
