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
        contentView.logOutAction = {
            let alert = UIAlertController(title: "Ahtung", message: "Really? You want to log out???", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Log Out", style: .destructive, handler: { [unowned self] (alert: UIAlertAction) in
                self.model.logOut()
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        contentView.backAction = {
            self.model.back()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                contentView.display(model.data)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! RegistrationViewControllerInput
        controller.set(model.data)
    }
}

// MARK: - HomeModelOutput
extension HomeViewController: HomeModelOutput {
    func modelDidLogOut() {
     performSegue(withIdentifier: "unwind", sender: nil)
    }
    func modelDidBack() {
        performSegue(withIdentifier: "unwind", sender: nil)
    }
}

// MARK: - HomeViewControllerInput
extension HomeViewController: HomeViewControllerInput {
    func set (_ data: RegistrationData){
        model.data = data
    }
}
