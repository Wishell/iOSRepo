//  
//  RegistrationViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class RegistrationViewController: UIViewController {
    
    var model: RegistrationModelInput!
    lazy var contentView: RegistrationViewInput = { return view as! RegistrationViewInput }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.textChange = { [unowned self] (text, index) in
            self.model.data[index] = text
            self.contentView.configure(available: self.model.data.isAllFieldSet)
        }
        contentView.action = { [unowned self] in
            self.model.signUp()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contentView.configure(available: self.model.data.isAllFieldSet)
        contentView.display(model.data)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // i have a question here abount what type sender
        if segue.identifier == "goHome" {
            let controller = segue.destination as! HomeViewControllerInput
            let sendedData = sender as! RegistrationData
            controller.set(sendedData)
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {}
}

// MARK: - RegistrationModelOutput
extension RegistrationViewController: RegistrationModelOutput {
    func signUpDidSucces() {
        performSegue(withIdentifier: "goHome", sender: model.data)
    }
    
    func signUpDidFail(_ error: Error?) {
        let alert = UIAlertController(title: "ERROR", message: error?.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
}

// MARK: - RegistrationViewControllerInput
extension RegistrationViewController: RegistrationViewControllerInput {
    func set(_ data: RegistrationData){
        model.data = data
    }
}
