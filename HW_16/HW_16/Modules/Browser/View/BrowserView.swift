//  
//  BrowserView.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit
import WebKit

protocol BrowserViewInput: class {
   // var attach:((WKWebView)->Void)? {get set}
    func load()
}

final class BrowserView: UIView {
    
   // var attach:((WKWebView)->Void)?
}

// MARK: - BrowserViewInput
extension BrowserView: BrowserViewInput {
    func load(){
       // attach?(self)
        let url = URL(string: Constants.Defaults.siteName)!
        let database = DataBase()
        
        //guard let data = database.load()Defaults.getData(for: Constants.Defaults.siteName) else {return}
        let data = database.get()
      //  self.load(data, mimeType: Constants.API.mimeHtml, characterEncodingName: "UTF-8", baseURL: url)
     //   self.allowsBackForwardNavigationGestures = true
    }
    
}
