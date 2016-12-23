//
//  CPGradientImage.swift
//  Pods
//
//  Created by Phong Cao on 12/22/16.
//
//


import UIKit

open class CPGradientImage: UIImageView{
    
    fileprivate let gradient = CAGradientLayer()
    open var startColor: UIColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.5)
    open var endColor: UIColor = UIColor.clear
    open var locations: [NSNumber] = [0.0,0.5]
    open var direction: CPGradientDirection = .top
    
    open func show(){
        gradient.frame = self.bounds
        gradient.colors = [startColor.cgColor,endColor.cgColor]
        detectGradientDirection()
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    //Detect gradient direction
    
    fileprivate func detectGradientDirection(){
        switch direction{
        case .top:
            gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        case .bottom:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        case .left:
            gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        case .right:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        case .bottomLeftToTopRight:
            gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        case .bottomRightToTopLeft:
            gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        case .topLeftToBottomRight:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        case .topRightToBottomLeft:
            gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        }
    }
    
}
