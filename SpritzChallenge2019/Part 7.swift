//
//  Part 7.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 22/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//


import Foundation
import UIKit

class SevenViewController: UIViewController {
    
    var princessView: UIImageView!
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        princessView = UIImageView()
        princessView.frame = CGRect(x: 500, y: 50, width: 350, height: 800)
        view.addSubview(princessView)
        princessView.image = UIImage(imageLiteralResourceName: "watch1")
        
        let line1 = UILabel()
        line1.text = "'Apple Watch!'"
        line1.frame = CGRect(x: 520, y: 880, width: 600, height: 80)
        view.addSubview(line1)
        line1.font = UIFont(name: "Helvetica", size: 70)
        line1.textColor = .yellow
        line1.alpha = 0
        
        UIView.animate(withDuration: 3.0) {
            self.princessView.alpha = 1.0
            self.princessView.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
        
        UIView.animate(withDuration: 4.0) {
            line1.alpha = 1.0
            line1.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }
    }
}

