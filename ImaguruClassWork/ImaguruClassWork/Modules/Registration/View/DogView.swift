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


<<<<<<< Updated upstream
=======
<<<<<<< HEAD
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}
=======
>>>>>>> 1b029dd... - created Dog UIView class
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
        //drawNoise()
        //drawMouth()
=======
<<<<<<< HEAD
        drawNoise(rect)
       // drawEyes(rect)
=======
        //drawNoise()
        //drawMouth()
>>>>>>> 1b029dd... - created Dog UIView class
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
       // path.move(to: center)
//        context.addLine(to: CGPoint(x: 0, y: 100))
//        context.addLine(to: CGPoint(x: 100, y: 100))
//        path.addLine(to: center)
<<<<<<< Updated upstream
=======
>>>>>>> 1b029dd... - created Dog UIView class
>>>>>>> Stashed changes
        context.addPath(path)
         context.strokePath()
    }
    
    private func drawHear (_ rect: CGRect){
        guard let context  = PrepareContext(with: UIColor.black.cgColor, line: 5.0) else {return}
        let path = CGMutablePath()
<<<<<<< Updated upstream
        var centerHear: CGPoint = CGPoint(x: HeadRect.minX, y: HeadRect.maxY/3)
        path.move(to: CGPoint(x: mycenter.x - 5, y: HeadRect.minY))
        path.addArc(center: centerHear, radius: 20.0, startAngle: <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
=======
<<<<<<< HEAD
        var centerHear: CGPoint = CGPoint(x: mycenter.x - mycenter.x/2, y: mycenter.y)
        path.addArc(center: centerHear, radius: 80.0, startAngle: CGFloat(180).degreesToRadians, endAngle: CGFloat(-65).degreesToRadians, clockwise: false)
        path.move(to: centerHear)
        path.addLine(to: CGPoint(x: centerHear.x-82.0 , y: centerHear.y))
        centerHear = CGPoint(x: mycenter.x + mycenter.x/2, y: mycenter.y)
        path.move(to: centerHear)
        path.addArc(center: centerHear, radius: 80.0, startAngle: CGFloat(0).degreesToRadians, endAngle: CGFloat(-115).degreesToRadians, clockwise: true)
        context.addPath(path)
        context.strokePath()
    }
    
    private func drawNoise (_ rect: CGRect){
        guard let context  = PrepareContext(with: UIColor.black.cgColor, line: 5.0) else {return}
        let path = CGMutablePath()
        let noiseRect: CGRect = CGRect(x: CGFloat(mycenter.x - 10), y: CGFloat(mycenter.y - 10), width: 20.0, height: 20.0)
        path.addEllipse(in: noiseRect)
//        let noiseCenter = CGPoint(x: mycenter.x, y: mycenter.y + noiseRect.size.height/2)
//        path.move(to: noiseCenter)
//        path.addCurve(to: CGPoint(x: noiseCenter.x - 40, y: noiseCenter.y + 40 ), control1: CGPoint(x: noiseCenter.x - 22, y: noiseCenter.y + 20 ), control2: CGPoint(x: noiseCenter.x - 10, y: noiseCenter.y + 6 ))
        context.addPath(path)
        context.strokePath()
    }
    
    private func drawEyes (_ rect: CGRect){
        guard let context  = PrepareContext(with: UIColor.black.cgColor, line: 5.0) else {return}
        let path = CGMutablePath()
        
=======
        var centerHear: CGPoint = CGPoint(x: HeadRect.minX, y: HeadRect.maxY/3)
        path.move(to: CGPoint(x: mycenter.x - 5, y: HeadRect.minY))
        path.addArc(center: centerHear, radius: 20.0, startAngle: <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
>>>>>>> 1b029dd... - created Dog UIView class
>>>>>>> Stashed changes
    }
    
    
}
