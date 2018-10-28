//  
//  FirstViewController.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    var model: FirstModelInput!
    lazy var contentView: FirstViewInput = { return view as! FirstViewInput }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGestureToHideKeyboard()
        
        contentView.buttonAction = {[unowned self] in
            if let text = self.model.text, !text.isEmpty {
                let alertController = UIAlertController(title: "PEACEDEATH", message: "ERROR", preferredStyle: .actionSheet)
                let alertAction = UIAlertAction(title: "Ok", style: .cancel){(action) in }
                alertController.addAction(alertAction)
                self.present(alertController, animated: true, completion: nil)
            } else {
                self.performSegue(withIdentifier: "showSecond", sender: nil)
            }
        }
        
        contentView.hideKeyboard = {[unowned self] in self.view.endEditing(true)}
        
        contentView.textFromField = { [unowned self] (text) in
           self.model.text = text
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "show"
//    }
    
      @IBAction func unwind(segue: UIStoryboardSegue) {}
    
}

// MARK: - FirstModelOutput
extension FirstViewController: FirstModelOutput {
    
    
}

// MARK: - FirstViewControllerInput
extension FirstViewController: FirstViewControllerInput {}

extension UIViewController {
    func addGestureToHideKeyboard(){
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
    
}
