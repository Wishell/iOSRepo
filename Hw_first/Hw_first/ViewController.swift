//
//  ViewController.swift
//  Hw_first
//
//  Created by Wishell on 23.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

extension UIColor {
    static func RandomColor () -> UIColor {
        return UIColor.init(red: CGFloat(Float.random(in: 0...1)),
                            green: CGFloat(Float.random(in: 0...1)),
                            blue: CGFloat(Float.random(in: 0...1)),
                            alpha: 1.0)
    }
}

class ViewController: UIViewController {
    override func awakeFromNib() {
        print("awakeFromNib")
    }
    
    @IBOutlet weak var embededView: UIView!
    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func changeColor(_ sender: UIButton) {
        embededView.backgroundColor = UIColor.RandomColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.RandomColor()
        print("viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print ("Memory overload your app will be closed")
    }
    

}

