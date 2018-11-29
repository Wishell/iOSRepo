//  
//  BrowserViewController.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit
import WebKit

final class BrowserViewController: UIViewController, WKNavigationDelegate {

    var model: BrowserModelInput!
    lazy var contentView: BrowserViewInput = { return view as! BrowserViewInput }()
    var webView: WKWebView!

    override func loadView() {
        super.loadView()
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        model.load(.realmStorage)
    }

}

// MARK: - BrowserModelOutput
extension BrowserViewController: BrowserModelOutput {

    func modelDidLoad(_ data: Data) {
        guard let url = URL(string: Constants.Defaults.siteName) else {return}
        webView.load(data, mimeType: Constants.API.mimeHtml, characterEncodingName: "UTF-8", baseURL: url)
        webView.allowsBackForwardNavigationGestures = true    }

    func modelDidFail(_ error: Error?) {
        let alert = UIAlertController(title: "Error", message: "load error: \(String(describing: error))", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

// MARK: - BrowserViewControllerInput
extension BrowserViewController: BrowserViewControllerInput { }
