//
//  DogView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 05.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics



final class Dog: UIView {
    
    lazy var HeadRect: CGRect = {
        var point: CGPoint = CGPoint(x: mycenter.x - mycenter.x/2, y: mycenter.y - mycenter.x/2)
        var size: CGSize = CGSize(width: mycenter.x, height: mycenter.x)
        return CGRect(origin: point, size: size)
    }()
    
    lazy var mycenter: CGPoint = {                                  // Why stock center have wrong coordinates??
        return CGPoint(x: frame.width/2, y: frame.height/2)
    }()
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("frame \(frame.width)")
        drawHead(rect)
        drawHear(rect)
        //drawNoise()
        //drawMouth()
    }
    
    
    
    private func PrepareContext (with color: CGColor, line width: CGFloat) -> CGContext?{
        guard let context = UIGraphicsGetCurrentContext() else { fatalError("can`t create context")}
        context.setStrokeColor(color)
        context.setLineWidth(width)
        return context
    }
    
    
    
    private func drawHead (_ rect: CGRect){
        guard let context  = PrepareContext(with: UIColor.brown.cgColor, line: 5.0) else {return}
        let path = CGMutablePath()
        path.addEllipse(in: HeadRect)
       // path.move(to: center)
//        context.addLine(to: CGPoint(x: 0, y: 100))
//        context.addLine(to: CGPoint(x: 100, y: 100))
//        path.addLine(to: center)
        context.addPath(path)
         context.strokePath()
    }
    
    private func drawHear (_ rect: CGRect){
        guard let context  = PrepareContext(with: UIColor.black.cgColor, line: 5.0) else {return}
        let path = CGMutablePath()
        var centerHear: CGPoint = CGPoint(x: HeadRect.minX, y: HeadRect.maxY/3)
        path.move(to: CGPoint(x: mycenter.x - 5, y: HeadRect.minY))
        path.addArc(center: centerHear, radius: 20.0, startAngle: <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
    }
    
    
}
