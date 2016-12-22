//
//  CPGradientImage.swift
//  Pods
//
//  Created by Phong Cao on 12/22/16.
//
//


import UIKit

public class CPGradientImage: UIImageView{
    
    let gradient = CAGradientLayer()
    public var startColor: UIColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.5)
    public var endColor: UIColor = UIColor.clear
    public var locations: [NSNumber] = [0.0,0.5]
    public var direction: CPGradientDirection = .top
    
    public func show(){
        gradient.frame = self.bounds
        gradient.colors = [startColor.cgColor,endColor.cgColor]
        detectGradientDirection()
        gradient.locations = locations
        gradient.cornerRadius = self.layer.cornerRadius
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    //Detect gradient direction
    
    func detectGradientDirection(){
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
