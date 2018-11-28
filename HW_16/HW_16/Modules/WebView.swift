//
//  WebView.swift
//  HW_16
//
//  Created by Wishell on 28.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit
import WebKit

class WebView: UIViewController {
var webView: WKWebView!


    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: Constants.Defaults.siteName)!
        guard let data = Defaults.getData(for: Constants.Defaults.siteName) else {return}
        webView.load(data, mimeType: "application/html", characterEncodingName: "UTF-8", baseURL: url)
        webView.allowsBackForwardNavigationGestures = true
        
    }
    




}
