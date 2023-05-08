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
    }
    
    func addShadow() {
        testView.layer.shadowColor = UIColor.black.cgColor
        testView.layer.shadowOpacity = 1
        testView.layer.shadowOffset = CGSize(width: 10, height: 10)
        testView.layer.shadowRadius = 2
    }
}
