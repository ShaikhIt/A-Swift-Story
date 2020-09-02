//
//  Part 3.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 22/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//

import Foundation
import UIKit

class ThreeViewController: UIViewController {
    
    var princessView: UIImageView!
    var cakeView: UIImageView!
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        princessView = UIImageView()
        //princessView.frame = CGRect(x: 550, y: 20, width: 300, height: 500)
        princessView.frame = CGRect(x: 550, y: -500, width: 300, height: 500)
        view.addSubview(princessView)
        princessView.image = UIImage(imageLiteralResourceName: "princess4.png")
        
        cakeView = UIImageView()
        //cakeView.frame = CGRect(x: 500, y: 530, width: 430, height: 600)
        cakeView.frame = CGRect(x: 500, y: /*525*/1024, width: 430, height: 600)
        view.addSubview(cakeView)
        cakeView.image = UIImage(imageLiteralResourceName: "cake9")
        cakeView.alpha = 1.0
        
        let line1 = UILabel()
        line1.text = "As she was merrily celebrating her birthday..."
        line1.frame = CGRect(x: 260, y: 530, width: 1000, height: 60)
        line1.font = UIFont(name: "Helvetica", size: 50)
        line1.textColor = .yellow
        view.addSubview(line1)
        
        UIView.animate(withDuration: 2.0/*4.0*/) {
            //self.princessView.alpha = 0
            //self.princessView.alpha = 0.5
            //self.princessView.alpha = 1.0
            //self.cakeView.alpha = 0
            //self.cakeView.alpha = 1.0
           // self.cakeView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            self.princessView.transform = CGAffineTransform(translationX: 0, y: 520)
            self.cakeView.transform = CGAffineTransform(translationX: 0, y: -499)
        }
        
        UIView.animate(withDuration: 5.0) {
            line1.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }
}
