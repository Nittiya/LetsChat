import UIKit
@IBDesignable
class gradientView2: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0){
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
}
