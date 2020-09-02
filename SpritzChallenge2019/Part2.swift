//
//  Part2.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 21/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//

import Foundation
import UIKit

class TwoViewController: UIViewController {
    var princessView: UIImageView!
    
    override func viewDidLoad() {
        let view = UIView()
        view.backgroundColor = .black
        
        princessView = UIImageView()
        princessView.frame = CGRect(x: -350, y: 30, width: 400, height: 700)
        view.addSubview(princessView)
        princessView.image = UIImage(imageLiteralResourceName: "princess11.png")
        princessView.alpha = 0
        
        let line1 = UILabel()
        line1.text = "There lived a beautiful princess..."
        line1.frame = CGRect(x: 1366, y: 780, width: 1000, height: 50)
        line1.font = UIFont(name: "Helvetica", size: 50)
        line1.textColor = .yellow
        view.addSubview(line1)
        
        let line2 = UILabel()
        line2.text = "Here's a story from her 20th birthday..."
        line2.frame = CGRect(x: -1000, y: 880, width: 1000, height: 50)
        line2.font = UIFont(name: "Helvetica", size: 50)
        line2.textColor = .yellow
        view.addSubview(line2)
        
        UIView.animate(withDuration: 5.0) {
            line1.alpha = 0
            line1.alpha = 0.5
            line1.alpha = 1.0
            line2.alpha = 0
            line2.alpha = 0.5
            line2.alpha = 1.0
            line1.transform = CGAffineTransform(translationX: -1026, y: 0)
            line2.transform = CGAffineTransform(translationX:  1336, y: 0)
            self.princessView.transform = CGAffineTransform(translationX: 850, y: 0)
            //line1.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            //line2.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.princessView.alpha = 1.0
            //self.princessView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
        
        self.view = view
    }
}
