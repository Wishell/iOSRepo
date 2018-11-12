//
//  DetailsCell.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 10.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class DetailsViewCell: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Lairlines: UILabel!
    @IBOutlet weak var Lflights: UILabel!
    @IBOutlet weak var Ltime: UILabel!
    
    private let viewName = ""
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("Details", owner: self, options: nil)
        addSubview(contentView)
        contentView.bounds = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        image.image = UIImage(named: "plain2.jpeg")
    }
    
    func display(_ data: FlightData) {
        Lairlines.text = data.Airline
        Lflights.text = data.Flight
        Ltime.text = data.ActualTime
    }
}
