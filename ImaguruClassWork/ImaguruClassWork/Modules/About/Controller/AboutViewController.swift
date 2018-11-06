//
//  AboutViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutViewController: UIViewController {

    var model: AboutModelInput!
    lazy var contentView: AboutViewInput = { return view as! AboutViewInput }()
    lazy var dataSource: AboutDataSource? = AboutDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.registerCollectionView = { [unowned self] view in
            view.dataSource = self.dataSource
        }
        contentView.prepareView()
        model.load()
    }

}

// MARK: - AboutModelOutput
extension AboutViewController: AboutModelOutput {

    func modelDidLoad() {
        dataSource?.items = model.data
        contentView.reload()
    }

}

// MARK: - AboutViewControllerInput
extension AboutViewController: AboutViewControllerInput { }
