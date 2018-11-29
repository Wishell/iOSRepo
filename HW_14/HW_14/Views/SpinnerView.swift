//
//  DataSource.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

@IBDesignable
final class SpinnerView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var activity: UIActivityIndicatorView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("Spinner", owner: self, options: nil)
        addSubview(contentView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = bounds
    }

    override var intrinsicContentSize: CGSize { return activity.frame.size }

    func start() {
        activity.startAnimating()
    }

    func stop() {
        activity.stopAnimating()
    }

}
