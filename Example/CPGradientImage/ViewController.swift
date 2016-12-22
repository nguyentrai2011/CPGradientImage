//
//  ViewController.swift
//  CPGradientImage
//
//  Created by Phong Cao on 12/22/2016.
//  Copyright (c) 2016 Phong Cao. All rights reserved.
//

import UIKit
import CPGradientImage

class ViewController: UIViewController {
    
    @IBOutlet weak var img: CPGradientImage!
    @IBOutlet weak var imgCaptain: CPGradientImage!
    @IBOutlet weak var imgIron: CPGradientImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configGradientImage()
    }
    
    func configGradientImage(){
        
        //Deadpool
        img.direction = .bottom
        img.show()
        
        //IronMan
        
        imgIron.direction = .top //From bottom to top
        imgIron.startColor = UIColor(colorLiteralRed: 143/255.0, green: 0, blue: 7/255.0, alpha: 0.8)
        imgIron.endColor = UIColor(colorLiteralRed: 130/255.0, green: 45/255.0, blue: 50/255.0, alpha: 0.2)
        imgIron.show()
        
        //Captain America
        
        imgCaptain.direction = .bottomLeftToTopRight
        imgCaptain.startColor = UIColor.blue
        imgCaptain.endColor = UIColor(colorLiteralRed: 78/255.0, green: 114/255.0, blue: 205/255.0, alpha: 0.2)
        imgCaptain.locations = [0.0,0.6]
        imgCaptain.show()
        
    }

}

