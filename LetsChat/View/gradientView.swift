//
//  gradientView.swift
//  LetsChat
//
//  Created by Nittiya Nuanploy on 2/11/18.
//  Copyright © 2018 Nittiya Nuanploy. All rights reserved.
//

import UIKit
@IBDesignable
class gradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.9509041878, green: 0.4307044551, blue: 0.1416369633, alpha: 0.86) {
        didSet {
                self.setNeedsLayout()
    
    }
}
    
    @IBInspectable var bottomColor: UIColor = UIColor.orange {
        didSet {
            self.setNeedsLayout()
            
        }
    }
    
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint (x: 0, y:0)
        gradientLayer.endPoint = CGPoint(x:1, y:1)
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
