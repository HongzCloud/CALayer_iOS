//
//  ViewController.swift
//  CALayer_iOS
//
//  Created by 오킹 on 2023/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    let testView = UIView(frame: .init(x: 50, y: 100, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(testView)
        addShadow()
        addGradient()
    }
    
    func addShadow() {
        testView.layer.shadowColor = UIColor.black.cgColor
        testView.layer.shadowOpacity = 1
        testView.layer.shadowOffset = CGSize(width: 10, height: 10)
        testView.layer.shadowRadius = 2
    }

    func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = testView.bounds
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        gradientLayer.borderWidth = 1
        gradientLayer.borderColor = UIColor.black.cgColor

        testView.layer.addSublayer(gradientLayer)

         let animation = CABasicAnimation(keyPath: "bounds.size.height")
         animation.fromValue = gradientLayer.bounds.height
         animation.toValue = gradientLayer.bounds.height * 2
         animation.duration = 2.0
         animation.autoreverses = true
         animation.repeatCount = .infinity

         gradientLayer.add(animation, forKey: "bounds.size.height")
    }
}
